import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:finstagram/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final FirebaseService _firebaseService =
      GetIt.instance.get<FirebaseService>();

  String? _name;
  String? _email;
  String? _password;
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _topWidget(),
                  _registerForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _topWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _titleWidget(),
        _profileImageWidget(),
      ],
    );
  }

  Widget _profileImageWidget() {
    var _imageProvider = _image != null
        ? FileImage(_image!)
        : const NetworkImage('https://i.pravatar.cc/300');

    return GestureDetector(
      onTap: () async {
        FilePickerResult? _result =
            await FilePicker.platform.pickFiles(type: FileType.image);

        setState(() {
          _image = File(_result!.files.first.path!);
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        width: 125,
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(125),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: _imageProvider as ImageProvider,
          ),
        ),
      ),
    );
  }

  Widget _registerForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: _registerFormKey,
          child: Column(
            children: [
              _nameTextField(),
              _emailTextField(),
              _passwordTextField(),
            ],
          ),
        ),
        _registerButton(),
      ],
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

  Widget _registerButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: MaterialButton(
        onPressed: _registerUser,
        minWidth: double.infinity,
        height: 50,
        color: Colors.red,
        child: const Text('Register',
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }

  Widget _nameTextField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        decoration: const InputDecoration(hintText: 'Name'),
        onSaved: (_value) {
          setState(() {
            _name = _value;
          });
        },
        validator: (_value) =>
            _value!.isNotEmpty ? null : 'Please enter a name.',
      ),
    );
  }

  Widget _emailTextField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
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

  void _registerUser() async {
    if (_registerFormKey.currentState!.validate() && _image != null) {
      _registerFormKey.currentState!.save();

      bool _result = await _firebaseService.registerUser(
        name: _name!,
        email: _email!,
        password: _password!,
        image: _image!,
      );

      if (_result) {
        Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration failed...')),
        );
      }
    }
  }
}
