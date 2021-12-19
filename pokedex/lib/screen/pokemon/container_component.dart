import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/custom/colors.dart';

class ContainerComponent extends StatelessWidget {
  const ContainerComponent({
    Key? key,
    required this.color,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.footer,
  }) : super(key: key);

  final Color color;
  final Widget img;
  final String title;
  final Widget subtitle;
  final String description;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Material(
              color: color,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: CustomColors.ligth,
                ),
              ),
            ),
          ],
        ),
        img,
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  title.substring(0, 1).toUpperCase() + title.substring(1),
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 19,
                ),
                subtitle,
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 7,
                    left: 7,
                    bottom: 0,
                    top: 0,
                  ),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                footer,
              ],
            ),
            padding: EdgeInsets.only(
              bottom: 30,
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              color: CustomColors.ligth,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        )
      ],
    );
  }
}
