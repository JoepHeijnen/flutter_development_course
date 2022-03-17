import 'package:finstagram/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFromKey = GlobalKey<FormState>();
  final FirebaseService _firebaseService =
      GetIt.instance.get<FirebaseService>();

  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _titleWidget(),
                _loginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleWidget() {
    return const Text(
      'Finstagram',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: _loginFromKey,
          child: Column(
            children: [
              _emailTextField(),
              _passwordTextField(),
            ],
          ),
        ),
        _loginButtonWidget(),
        _registerPageLink()
      ],
    );
  }

  Widget _emailTextField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        initialValue: 'joep.heijnen@topicus.nl',
        decoration: const InputDecoration(hintText: 'Email'),
        onSaved: (_value) {
          setState(() {
            _email = _value;
          });
        },
        validator: (_value) {
          bool _result = _value!.contains(
            RegExp(
                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"),
          );

          return _result ? null : 'Please enter a valid email';
        },
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        initialValue: 'Joepheijnen2019',
        obscureText: true,
        decoration: const InputDecoration(hintText: 'Password'),
        onSaved: (_value) {
          setState(() {
            _password = _value;
          });
        },
        validator: (_value) =>
            _value!.length > 6 ? null : 'Please enter a valid password',
      ),
    );
  }

  Widget _loginButtonWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: MaterialButton(
        onPressed: _loginUser,
        minWidth: double.infinity,
        height: 50,
        color: Colors.red,
        child: const Text('Login',
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }

  Widget _registerPageLink() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'register'),
      child: const Text(
        "Don't have an account?",
        style: TextStyle(
            color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  void _loginUser() async {
    if (_loginFromKey.currentState!.validate()) {
      _loginFromKey.currentState!.save();
      bool _result = await _firebaseService.loginUser(
          email: _email!, password: _password!);

      if (_result) {
        Navigator.popAndPushNamed(context, 'home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login failed...')),
        );
      }
    }
  }
}
