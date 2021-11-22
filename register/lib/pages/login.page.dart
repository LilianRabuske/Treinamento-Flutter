import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/components/global.title.dart';
import 'package:register/util/color.util.dart';


import 'dart:developer' as developer;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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

  _cadastro() {
    developer.log(
      'email ' + _emailController.text,
      name: runtimeType.toString(),
    );
    developer.log(
      'senha ' + _passwordController.text,
      name: runtimeType.toString(),
    );
   
    Navigator.pushNamed(context, '/register');
    // return showDialog<void>(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       title: Text(
    //         'Formulário inválido',
    //         style: TextStyle(
    //           color: ColorUtils.darkGray,
    //         ),
    //       ),
    //       content: Container(
    //         height: 40,
    //         width: 100,
    //         child: Text(
    //           'Preencha os campos corretamente',
    //           style: TextStyle(
    //             color: ColorUtils.darkGray,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }

  _registerPage(){
      Navigator.pushNamed(context,'/register'
      );
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
              GlobalTitle(text: "Login"),
                const SizedBox(height: 32),
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
                const SizedBox(height: 32),
                  CupertinoButton(
                  onPressed: _registerPage,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    height: 50,
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color:  Colors.red,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: _cadastro,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: ColorUtils.red,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Continue',
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
