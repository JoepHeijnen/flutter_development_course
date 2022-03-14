import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/pages/request_page.dart';
import '../services/http_service.dart';

class HomePage extends StatelessWidget {
  final HTTPService _httpService = GetIt.instance.get<HTTPService>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
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
                  child: const Text('Interceptor'))
            ],
          ),
        ),
      ),
    );
  }
}
