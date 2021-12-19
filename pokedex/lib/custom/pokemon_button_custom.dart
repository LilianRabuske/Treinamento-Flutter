import 'package:flutter/material.dart';


import 'colors.dart';


final pokemonButtonThemeDataCustom = ElevatedButtonThemeData(
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith(
        (states) => CustomColors.overlay),
    shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            color: Colors.grey.shade200,
          ),
        )),
    backgroundColor:
        MaterialStateProperty.resolveWith((states) => CustomColors.ligth),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (states) => TextStyle(color: CustomColors.textColor),
    ),
  ),
);