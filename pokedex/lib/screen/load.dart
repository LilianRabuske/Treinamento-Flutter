import 'package:flutter/cupertino.dart';
import 'package:pokedex/custom/colors.dart';


class Load extends StatelessWidget {
  const Load({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: CustomColors.backGroundAndLogo),
    );
  }
}