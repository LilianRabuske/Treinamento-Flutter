import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/components/global.title.dart';
import 'package:register/components/icon.back.dart';
import 'package:register/pages/login.page.dart';
import 'package:register/util/color.util.dart';

import 'dart:developer' as developer;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  final TextEditingController _referalCodeController = TextEditingController();

  _register() {
    developer.log(
      'user registrado',
      name: runtimeType.toString(),
    );
    developer.log(
      'nome ' + _nameController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'email ' + _emailController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'telefone ' + _mobileController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'país ' + _countryController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'senha ' + _passwordController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'cep ' + _referalCodeController.text,
      name: runtimeType.toString(),
    );

    Navigator.pushNamed(context, '/verification');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 24, 30, 30),
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconBack(),
                GlobalTitle(text: "Register"),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorUtils.black,
                    fontSize: 20.0,
                  ),
                  controller: _nameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorUtils.black,
                    fontSize: 20.0,
                  ),
                  controller: _emailController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Mobile number',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: ColorUtils.black, fontSize: 20.0),
                  controller: _mobileController,
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return 'Enter your phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Country',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: ColorUtils.black, fontSize: 20.0),
                  controller: _countryController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Enter your contry';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: ColorUtils.black, fontSize: 20.0),
                  controller: _passwordController,
                  validator: (value) {
                    if (value != null && (value.isEmpty || value.length < 6)) {
                      return 'Enter a valid password';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: ColorUtils.black, fontSize: 20.0),
                  controller: _passwordConfirmationController,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  cursorColor: ColorUtils.red,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Referal Code (Optional)',
                    labelStyle: TextStyle(
                      color: ColorUtils.gray,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: ColorUtils.black, fontSize: 20.0),
                  controller: _referalCodeController,
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                CupertinoButton(
                  onPressed: () => {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: ColorUtils.red,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
