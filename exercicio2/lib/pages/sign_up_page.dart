import 'dart:ui';

import 'package:exercicio2/util/color.util.dart';
import 'package:exercicio2/widgets/sign_up_header.widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isHid = true;
  final _formKey = GlobalKey<FormState>();

  List<Widget> buildFirstNameInput() => [
        Text(
          'First Name',
          style: TextStyle(color: ColorUtil.grey),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (text) {
            if (text == null || text.isEmpty) {
              return "Nome inválido";
            }
          },
          cursorColor: ColorUtil.white,
          style: TextStyle(color: ColorUtil.white),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorUtil.white,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorUtil.grey))),
        ),
      ];
  List<Widget> buildEmailInput() => [
        Row(children: [
          Text(
            'Email',
            style: TextStyle(color: ColorUtil.grey),
          ),
          Text('*', style: TextStyle(color: ColorUtil.red))
        ]),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (text) {
            if (text == null || text.isEmpty) {
              return "Email inválido";
            }
          },
          cursorColor: ColorUtil.white,
          style: TextStyle(color: ColorUtil.white),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorUtil.white,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorUtil.grey))),
        ),
      ];

  List<Widget> buildPasswordInput() => [
        Row(children: [
          Text(
            'PassWord',
            style: TextStyle(color: ColorUtil.grey),
          ),
          Text('*', style: TextStyle(color: ColorUtil.red)),
        ]),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (text) {
            if (text == null || text.length < 3) {
              return "Senha inválida";
            }
          },
          cursorColor: ColorUtil.white,
          obscureText: _isHid,
          style: TextStyle(color: ColorUtil.white),
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _isHid = !_isHid;
                  });
                },
                child: Icon(
                  _isHid ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorUtil.white,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorUtil.grey))),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SignUpHeader(),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...buildFirstNameInput(),
                    SizedBox(
                      height: 20,
                    ),
                    ...buildEmailInput(),
                    SizedBox(
                      height: 20,
                    ),
                    ...buildPasswordInput(),
                    GestureDetector(
                      onTap: () {
                        _formKey.currentState?.validate();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: ColorUtil.green,
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: ColorUtil.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
