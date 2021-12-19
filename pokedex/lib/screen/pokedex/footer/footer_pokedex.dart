import 'package:flutter/cupertino.dart';
import 'package:pokedex/custom/colors.dart';
import 'package:pokedex/enum/footer_enum.dart';


import 'footer_option.dart';

class PokedexScreenFooter extends StatelessWidget {
 const PokedexScreenFooter({
    Key? key,
    required this.current,
  }) : super(key: key);

  final FooterOptions current;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      color: CustomColors.headerAndFooterAndBackGround,
      child: Column(
        children: [
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            color: CustomColors.borderDark,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 20,
              right: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...[
                  FooterOptions.POKEMON,
                  FooterOptions.MOVES,
                  FooterOptions.ITENS,
                ].map(
                  (e) => FooterOption(
                    enumFooterPokedex: e,
                    current: current,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
