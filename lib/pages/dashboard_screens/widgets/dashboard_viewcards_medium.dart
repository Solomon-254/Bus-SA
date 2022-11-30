import 'package:flutter/material.dart';

import 'dashboard_cards.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Buses Available",
              value: "7",
              onTap: () {},
              function: "View All Buses",
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "All Users",
              topColor: Colors.lightGreen,
              function: "View All Users",
              value: "10",
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: _width / 64,
        ),
        Row(
          children: [
            InfoCard(
              title: "Events",
              topColor: Colors.redAccent,
              function: "View All Events",
              value: "20",
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Drivers",
              value: "32",
              function: "View All Drivers",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
