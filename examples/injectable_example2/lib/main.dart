import "package:flutter/material.dart";
import "package:injectable_example2/config/injection.dart";
import "package:injectable_example2/views/coins_page.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Injection Example",
      home: CoinsPage(),
    );
  }
}
