import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalTitle extends StatelessWidget {
  final String text;

  const GlobalTitle({Key? key, required this.text, this.padddingBottom = 50})
      : super(key: key);
  final double padddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, padddingBottom),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.italic,
          fontSize: 34,
        ),
      ),
    );
  }
}
