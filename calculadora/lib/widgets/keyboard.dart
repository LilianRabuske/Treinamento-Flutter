import 'package:calculadora/util/keyboard.util.dart';
import 'package:flutter/material.dart';

import 'keyboard_key.dart';


class KeyboardWidget extends StatelessWidget {
  final Function(String keyValue) onKeyPressed;

  const KeyboardWidget({
    Key? key,
    required this.onKeyPressed,
  }) : super(key: key);

  List<Widget> get _keyboardKeys => Keyboard.keyboardMap
      .map(
        (String value) => KeyboardKey(
          label: value,
          value: value,
          onTap: onKeyPressed,
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _keyboardKeys,
    );
  }
}
