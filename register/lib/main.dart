import 'package:flutter/material.dart';
import 'package:register/pages/register.page.dart';
import 'package:register/util/color.util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorUtils.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RegisterPage(),
    );
  }
}
