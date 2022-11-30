import 'package:bus_management_system/pages/dashboard_screens/widgets/dashboard_cards.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Row(
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
        SizedBox(
          width: _width / 64,
        ),
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
    );
  }
}
