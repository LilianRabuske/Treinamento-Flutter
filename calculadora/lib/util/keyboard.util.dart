const _keyMap = [
  'C',
  '+/-',
  '%',
  '/',
  '7',
  '8',
  '9',
  'X',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '0',
  '.',
  '=',
];

class Keyboard {
  static List<String> get keyboardMap => _keyMap;
  static RegExp operations = RegExp(r'[+\-X/]');
  static RegExp numbers = RegExp(r'[0-9]*\.?[0-9]*');

  static bool isNumeric(String key) {
    final rx = RegExp(r'[0-9]');

    return rx.hasMatch(key);
  }

  static bool isOperation(String key) {
    return operations.hasMatch(key);
  }

  static bool hasSeparator(String equation) {
    final rx = RegExp(r'\.\d*$');

    return rx.hasMatch(equation);
  }
}
