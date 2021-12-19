import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/custom/colors.dart';

class PokedexScreenHeader extends StatefulWidget {
  const PokedexScreenHeader({Key? key}) : super(key: key);

  @override
  State<PokedexScreenHeader> createState() => _PokedexScreenHeader();
}

class _PokedexScreenHeader extends State<PokedexScreenHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      color: CustomColors.headerAndFooterAndBackGround,
      child: Column(
        children: [
          Text(
            "Pokemon",
            style: TextStyle(
              color: CustomColors.textColor,
              fontFamily: "Avenir",
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              style: TextStyle(
                fontFamily: "Helvetica Neue",
                fontSize: 17,
                color: CustomColors.textColor,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(1000),
                ),
                filled: true,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(
              color: CustomColors.backGroundAndLogo,
            ),
          ),
        ],
      ),
    );
  }
}
