import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable_example/config/injection.dart';
import 'package:injectable_example/models/quote.dart';
import 'package:injectable_example/repositories/quote_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dependency Injection Demo',
      home: MyQuotePage(title: 'Dependency Injection Demo Page'),
    );
  }
}

class MyQuotePage extends StatefulWidget {
  final String title;

  const MyQuotePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyQuotePageState createState() => _MyQuotePageState();
}

class _MyQuotePageState extends State<MyQuotePage> {
  QuoteRepository? _quoteRepository;
  Future<List>? _futureQuote;

  @override
  void initState() {
    super.initState();
    _quoteRepository = GetIt.instance.get<QuoteRepository>(param1: "testing");
    _futureQuote = _quoteRepository!.getQuotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List>(
          future: _futureQuote,
          builder: (context, AsyncSnapshot<List> snapData) {
            if (snapData.hasData) {
              return ListView.builder(
                itemCount: snapData.data?.length,
                itemBuilder: (context, index) =>
                    _quoteItem(snapData.data?[index], index),
              );
            } else if (snapData.hasError) {
              return Center(child: Text('Error: ${snapData.error}'));
            } else {
              return const Center(child: Text('Please wait its loading...'));
            }
          },
        ),
      ),
    );
  }

  Widget _quoteItem(Quote item, index) {
    return ListTile(
      tileColor: index % 2 == 0 ? Colors.white : Colors.grey.withOpacity(0.1),
      title: Text(
        '"${item.quote}"',
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text('- ${item.author}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
      ),
    );
  }
}
