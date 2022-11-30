import 'package:bus_management_system/pages/dashboard_screens/widgets/dashboard_cards_smallscreen.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Buses Available",
            value: "7",
            onTap: () {},
            function: "View All Buses",
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "All Users",
            function: "View All Users",
            value: "10",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Events",
            function: "View All Events",
            value: "20",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Drivers",
            value: "32",
            function: "View All Drivers",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
