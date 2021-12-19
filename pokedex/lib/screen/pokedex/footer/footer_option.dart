import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/enum/footer_enum.dart';


import 'footer_icons_pokedex.dart';

class FooterOption extends StatelessWidget {
  FooterOption({
    Key? key,
    required this.enumFooterPokedex,
    required this.current,
  }) : super(key: key);

  final FooterOptions current;
  final FooterOptions enumFooterPokedex;
  @override
  Widget build(BuildContext context) {
    FooterIconPokedex footerPokedexObject =
        footerPokedexMap[enumFooterPokedex] as FooterIconPokedex;
    Color color = enumFooterPokedex == current ? Colors.black : Colors.black54;
    return TextButton(
      onPressed: () {
      },
      child: Column(
        children: [
          IconTheme(
              data: IconThemeData(color: color),
              child: footerPokedexObject.icon),
          Text(
            footerPokedexObject.label,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}