import 'package:bus_management_system/constants/style.dart';
import 'package:bus_management_system/helpers/responsivenes.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.bus_alert,
                      color: iconsColor,
                    ),
                  ),
                ],
              )
            : IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  key.currentState.openDrawer();
                }),
        title: Container(
          child: Row(
            children: [
              Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  child: CustomText(
                    text: "Bus Management ",
                    color: textColor,
                    size: 18,
                    weight: FontWeight.bold,
                  )),
              Expanded(child: Container()),
              IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: iconsColor,
                  ),
                  onPressed: () {}),
              Stack(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: iconsColor,
                      ),
                      onPressed: () {}),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: bgAccentColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: bgAccentColor, width: 2)),
                    ),
                  )
                ],
              ),
              Container(
                width: 1,
                height: 22,
                color: bgAccentColor,
              ),
              SizedBox(
                width: 24,
              ),
              CustomText(
                text: "Nelson Bore",
                color: textColor,
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: bgAccentColor.withOpacity(.5),
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person_outline,
                      color: iconsColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.transparent);
