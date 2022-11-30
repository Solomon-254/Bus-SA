import 'package:bus_management_system/constants/style.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final String function;
  final Color topColor;
  final bool isActive;
  final Function onTap;

  const InfoCard(
      {Key key,
      @required this.title,
      this.value,
      this.isActive = false,
      @required this.onTap,
      this.topColor,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 6),
                  color: bgAccentColor.withOpacity(.1),
                  blurRadius: 12)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: topColor ?? iconsColor,
                    height: 5,
                  ))
                ],
              ),
              Expanded(child: Container()),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                            fontSize: 16,
                            color: isActive ? iconsColor : bgAccentColor)),
                    TextSpan(
                        text: "$value\n",
                        style: TextStyle(
                            fontSize: 40,
                            color: isActive ? iconsColor : bgAccentColor)),
                    TextSpan(
                        text: "$function",
                        style: TextStyle(
                            fontSize: 10,
                            color: isActive ? iconsColor : bgAccentColor)),
                  ])),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
