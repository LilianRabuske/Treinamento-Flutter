import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/util/color.util.dart';

class IconBack extends StatelessWidget {
  const IconBack({ Key? key }) : super(key: key);
    _back(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _back(context);
        },
        icon:
        IconTheme(data: IconThemeData(color: ColorUtils.black), child: Icon(Icons.west)),
        label: Text(""));
  }
}