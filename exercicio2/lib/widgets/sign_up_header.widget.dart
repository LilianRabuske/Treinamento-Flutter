import 'package:exercicio2/util/color.util.dart';
import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  final TextStyle _titleStyle = TextStyle(
    color: ColorUtil.white,
    fontWeight: FontWeight.w700,
    fontSize: 23,
  );

  final TextStyle _smallStyle = TextStyle(
      color: ColorUtil.grey, fontWeight: FontWeight.w400, fontSize: 13);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Sign Up', style: _titleStyle),
        Spacer(),
        Text('Already have an account?', style: _smallStyle),
        TextButton(onPressed: () {}, child: Text('Log In'))
      ],
    );
  }
}
