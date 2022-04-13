import 'package:flutter/material.dart';
import 'package:intercept_example/pages/request_page.dart';

import '../api/exceptions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext _context) {
                      return RequestPage();
                    }),
                  );
                },
                child: const Text('Interceptor'),
              ),
              ElevatedButton(
                onPressed: () {
                  Future.delayed(Duration.zero, () => throw Exception('async error'));
                },
                child: const Text('Async error'),
              ),
              ElevatedButton(
                onPressed: () {
                  throw Exception('sync error');
                },
                child: const Text('Sync error'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
