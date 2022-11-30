import 'dart:html';
import 'dart:js';

import 'package:bus_management_system/pages/buses_screens/buses.dart';
import 'package:bus_management_system/pages/dashboard_screens/dashboard.dart';
import 'package:bus_management_system/pages/events_screens/events.dart';
import 'package:bus_management_system/pages/onboarding_screen/login.dart';
import 'package:bus_management_system/pages/settings_screens/settings.dart';
import 'package:bus_management_system/pages/users_screens/users.dart';
import 'package:bus_management_system/routings/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardViewRoute:
      return _getpageRoute(OverviewPage());

    case BusesViewRoute:
      return _getpageRoute(const BusesPage());

    case UsersViewRoute:
      return _getpageRoute(const UsersPage());

    case HistoryViewRoute:
      return _getpageRoute(const EventsPage());

    case SettingsViewRoute:
      return _getpageRoute(const SettingsPage());

    case AuthenticationViewRoute:
      return _getpageRoute(const LoginPage());
  }
}

PageRoute _getpageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
