// ignore_for_file: constant_identifier_names
const RootRoute = "/";

const DashboardPageDisplayName = "Dashboard";
const DashboardViewRoute = "/dashboard";

const BusesPageDisplayName = "All Buses";
const BusesViewRoute = "/buses";

const UsersViewRoute = "/users";
const UsersPageDisplayName = "Users";

const HistoryViewRoute = "/events";
const HistoryPageDisplayName = "Events";

const SettingsViewRoute = "/settings";
const SettingsPageDisplayName = "Settings";

const AuthenticationViewRoute = "/authentication";
const AuthenticationDisplayName = "Log Out";

class MenuItem {
  final String name;
  final String route;
  MenuItem(this.name, this.route);
}

List<MenuItem> panelMenuItems = [
  MenuItem(DashboardPageDisplayName, DashboardViewRoute),
  MenuItem(BusesPageDisplayName, BusesViewRoute),
  MenuItem(UsersPageDisplayName, UsersViewRoute),
  MenuItem(HistoryPageDisplayName, HistoryViewRoute),
  MenuItem(SettingsPageDisplayName, SettingsViewRoute),
  MenuItem(AuthenticationDisplayName, AuthenticationViewRoute)
];
