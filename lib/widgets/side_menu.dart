import 'package:bus_management_system/constants/controller.dart';
import 'package:bus_management_system/constants/style.dart';
import 'package:bus_management_system/helpers/responsivenes.dart';
import 'package:bus_management_system/pages/onboarding_screen/login.dart';
import 'package:bus_management_system/routings/routes.dart';
import 'package:bus_management_system/widgets/custom_text.dart';
import 'package:bus_management_system/widgets/side_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: bgAccentColor,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: CircleAvatar(
                          radius: 25,
                        )),
                    Flexible(
                        child: CustomText(
                            text: 'Nelson Bore, Admin',
                            size: 16,
                            color: textColor,
                            weight: FontWeight.bold)),
                    SizedBox(
                      width: _width / 40,
                    ),
                  ],
                ),
                SizedBox(
                  width: _width / 48,
                ),
                const Divider(
                  color: Color.fromARGB(255, 204, 202, 202),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: panelMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == AuthenticationViewRoute) {
                          menuController
                              .changeActiveItemTo(DashboardPageDisplayName);
                          Get.offAllNamed(AuthenticationViewRoute);

                          // Get.offAll(() => LoginPage());
                        }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                          //Go to each respective pages as we are navigating

                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
