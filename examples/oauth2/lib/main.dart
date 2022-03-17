import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

import 'constants/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OAuth2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlutterAppAuth appAuth = FlutterAppAuth();

  String? _accessToken;

  Future<void> init() async {
    try {
      final AuthorizationTokenResponse? result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          AUTH_CLIENT_ID,
          Uri.parse(AUTH_REDIRECT_URI).toString(),
          issuer: AUTH_ISSUER,
          serviceConfiguration: AuthorizationServiceConfiguration(
            authorizationEndpoint:
                Uri.parse('$AUTH_ISSUER/idp/oauth2/authorize').toString(),
            tokenEndpoint:
                Uri.parse('$AUTH_ISSUER/idp/oauth2/token').toString(),
          ),
          scopes: ['openid'],
        ),
      );

      setState(() {
        _accessToken = result!.accessToken;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OAuth2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _content(),
          ],
        ),
      ),
    );
  }

  Widget _content() {
    return _accessToken != null
        ? const Text('Ingelogd',
            style: TextStyle(fontSize: 25, color: Colors.blue))
        : ElevatedButton(
            onPressed: () {
              init();
            },
            child: const Text('Inloggen'),
          );
  }
}
