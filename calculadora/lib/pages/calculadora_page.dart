import 'package:calculadora/util/color.util.dart';
import 'package:calculadora/util/keyboard.util.dart';
import 'package:flutter/material.dart';


import '../widgets/display.dart';
import '../widgets/keyboard.dart';


class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({Key? key}) : super(key: key);

  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  String _display = '';

  _keyPushed(String key) {
    String display = _display;

    if (Keyboard.isNumeric(key)) {
      display += key;
    }  else if (Keyboard.isOperation(key)) {
      final indexKey = display.length - 1;
      if (Keyboard.isOperation(display[indexKey])) {
        display = display.substring(0, indexKey) + key;
      } else {
        display += key;
      }
    } else if (key == 'C') {
      display = '';
    } else if (key == '=') {
      display = _result();
    }
    setState(() {
      _display = display;
    });
  }

  String _result() {
    final numbersCalculo = _display
        .split(Keyboard.operations)
        .map((e) => double.tryParse(e) ?? 0)
        .toList();
    final symbol = _display
        .split(Keyboard.numbers)
        .where((e) => e.isNotEmpty)
        .toList();

    double result = 0;
    for (var i = 0; i < numbersCalculo.length; i++) {
      if (i == 0) {
        result = numbersCalculo[i];
      } else {
        switch (symbol[i - 1]) {
          case '+':
            result += numbersCalculo[i];
            break;
          case '-':
            result -= numbersCalculo[i];
            break;
          case 'X':
            result *= numbersCalculo[i];
            break;
          case '/':
            result /= numbersCalculo[i];
            break;
          default:
            break;
        }
      }
    }
    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Display(value: _display),
            ),
            Expanded(
              flex: 6,
              child: KeyboardWidget(
                onKeyPressed: _keyPushed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
