import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:oauth2_example/constants/auth.dart';

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

      print(result);
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
            ElevatedButton(
              onPressed: () {
                init();
              },
              child: const Text('Inloggen'),
            )
          ],
        ),
      ),
    );
  }
}
