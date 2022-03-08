import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskly/models/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight;

  Box? _box;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Taskly', style: TextStyle(fontSize: 25)),
          toolbarHeight: _deviceHeight * 0.15,
        ),
        body: _tasksView(),
        floatingActionButton: _addTaskButton());
  }

  Widget _tasksView() {
    return FutureBuilder(
      future: Hive.openBox('Tasks'),
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        if (_snapshot.hasData) {
          _box = _snapshot.data;
          return _tasksList();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _tasksList() {
    List _tasks = _box!.values.toList();

    return ListView.builder(
      itemCount: _tasks.length,
      itemBuilder: (BuildContext _context, int _index) {
        var task = Task.fromMap(_tasks[_index]);

        return ListTile(
          title: Text(
            task.content,
            style: TextStyle(
                decoration: task.done ? TextDecoration.lineThrough : null),
          ),
          subtitle: Text(task.timestamp.toString()),
          trailing: Icon(
            task.done
                ? Icons.check_box_outlined
                : Icons.check_box_outline_blank_outlined,
            color: Colors.red,
          ),
          onTap: () {
            task.done = !task.done;
            _box!.putAt(_index, task.toMap());
            setState(() {});
          },
          onLongPress: () {
            _box!.deleteAt(_index);
            setState(() {});
          },
        );
      },
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: _displayTaskPopup,
    );
  }

  void _displayTaskPopup() {
    showDialog(
      context: context,
      builder: (BuildContext _context) {
        return AlertDialog(
          title: const Text('Add new Task!'),
          content: TextField(
            onSubmitted: (_value) {
              if (_value.isNotEmpty) {
                Task _task = Task(
                  content: _value,
                  timestamp: DateTime.now(),
                  done: false,
                );

                _box!.add(_task.toMap());
                Navigator.pop(context);

                setState(() {});
              }
            },
          ),
        );
      },
    );
  }
}
