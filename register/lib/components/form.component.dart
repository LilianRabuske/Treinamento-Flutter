import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/util/color.util.dart';

class FormVerification extends StatelessWidget {
  const FormVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      TextFormField(
          cursorColor: ColorUtils.red,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
                      labelText: 'Mobile number',
                      labelStyle: TextStyle(
                        color: ColorUtils.gray,
                        fontSize: 16,
                      )
          ),
          textAlign: TextAlign.start,
          style: TextStyle(color: ColorUtils.black, fontSize: 20.0))
    ]));
  }
}
