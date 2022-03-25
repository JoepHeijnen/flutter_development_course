import 'package:flutter/cupertino.dart';
import 'package:ibmi/pages/main_page.dart';

void main() {
  runApp(const IBMI());
}

class IBMI extends StatelessWidget {
  const IBMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'IBMI',
      initialRoute: '/',
      routes: {
        '/': (BuildContext _context) => const MainPage(),
      },
    );
  }
}
