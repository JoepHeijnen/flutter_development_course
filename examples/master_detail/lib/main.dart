import 'package:flutter/material.dart';
import 'package:master_detail/pages/groups_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Detail',
      initialRoute: '/',
      routes: {
        '/': (BuildContext _context) => const GroupsPage(),
      },
    );
  }
}
