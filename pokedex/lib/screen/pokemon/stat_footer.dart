import 'package:flutter/cupertino.dart';
import 'package:pokedex/custom/colors.dart';
import 'package:pokedex/dto/stats_dto.dart';


class StatFooter extends StatelessWidget {
  const StatFooter({
    Key? key,
    required this.listStat,
    required this.color,
  }) : super(key: key);

  final List<StatsDto> listStat;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "STATS",
          style: TextStyle(
            color: color,
            fontSize: 13,
            fontFamily: "Avenir",
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...listStat.map(
              (e) => Container(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      e.name.toUpperCase(),
                      style: TextStyle(
                        color: color,
                        fontSize: 12,
                        fontFamily: "Avenir",
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      e.point.toString().padLeft(3, '0'),
                      style: TextStyle(
                        color: CustomColors.numbers,
                        fontSize: 14,
                        fontFamily: "Avenir",
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
