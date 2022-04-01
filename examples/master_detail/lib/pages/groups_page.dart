import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/cubit/master_detail_cubit.dart';
import 'package:master_detail/models/item.dart';
import 'package:master_detail/pages/groups_detail_page.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  MasterDetailCubit? _masterDetailCubit;

  @override
  void initState() {
    super.initState();

    _masterDetailCubit =
        BlocProvider.of<MasterDetailCubit>(context, listen: false);

    _masterDetailCubit!.loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Groups'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), label: 'Conversation'),
        ],
        onTap: (int index) {
          if (index == 0) {
            GoRouter.of(context).push('/groups');
          } else if (index == 1) {
            GoRouter.of(context).push('/calendar');
          } else if (index == 2) {
            GoRouter.of(context).push('/conversations');
          }
        },
      ),
      body: SafeArea(
        child: _listView(),
      ),
    );
  }

  Widget _listView() {
    return BlocBuilder<MasterDetailCubit, MasterDetailState>(
      builder: (context, state) {
        if (state is NoItemsState) {
          return const Center(
            child: Text('No items loaded...'),
          );
        } else if (state is LoadingItemsState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is LoadedItemsState) {
          List<Item> _items = state.elements;

          return ListView.builder(
            itemCount: _items.length,
            itemBuilder: ((context, index) {
              Item _item = _items[index];
              bool _isSelected = _item.id == state.selectedElement.id;

              return ListTile(
                title: Text(_item.name),
                subtitle: _isSelected
                    ? const Text('Selected')
                    : const Text('Details'),
                onTap: () {
                  _masterDetailCubit!.selectItem(_item);

                  if (MediaQuery.of(context).size.width <= 768) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext _context) {
                        return const GroupsDetailPage();
                      }),
                    );
                  }
                },
              );
            }),
          );
        }

        throw Exception('Unexpected state');
      },
    );
  }
}
