import 'package:calculadora/util/color.util.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;

  const Display({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            value,
            style: const TextStyle(
              color: ColorUtils.white,
              fontSize: 42,
            ),
          ),
        ],
      ),
    );
  }
}
