import 'package:flutter/material.dart';
import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';

class AppRoute {
  static const initialroute = 'Home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'Home',
    //     name: 'Home Screen',
    //     screen: const Homescreen(),
    //     icon: Icons.home),
    MenuOptions(
        route: 'Listview 1',
        name: 'Listview Tipo 1',
        screen: ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'Listview 2',
        name: 'Listview tipo 2',
        screen: ListView2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOptions(
        route: 'Alert',
        name: 'alertas - alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOptions(
        route: 'Card',
        name: 'Cards - tarjetas',
        screen: const CardScreen(),
        icon: Icons.calendar_view_day_rounded),
    MenuOptions(
        route: 'Avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'Animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_outlined),

    MenuOptions(
        route: 'Inputs',
        name: 'inputs',
        screen: const InputsScreen(),
        icon: Icons.power_input_outlined),
    MenuOptions(
        route: 'Slicer',
        name: 'Slicer && Check',
        screen: const SlicerScreen(),
        icon: Icons.check_box_outlined),
    MenuOptions(
        route: 'ListViewBuilder',
        name: 'Builder & pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
    MenuOptions(
        route: 'RouteScreenShow',
        name: 'app Routes',
        screen: const RouteScreen(),
        icon: Icons.route_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({
      'Home': (BuildContext context) => const Homescreen(),
    });

    for (var options in menuOptions) {
      appRoutes.addAll({
        options.route: (BuildContext context) => options.screen,
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'Home': (BuildContext context) => const Homescreen(),
  //   'Listview 1': (BuildContext context) => ListView1Screen(),
  //   'Listview 2': (BuildContext context) => ListView2Screen(),
  //   'Alert': (BuildContext context) => const AlertScreen(),
  //   'Card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
