import 'package:app_components/models/models.dart';
import 'package:app_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: remove this home option
    /*  MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()), */
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'ListView 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: 'ListView 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.notifications,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Tarjetas',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.account_circle,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.input,
        name: 'Input',
        screen: const InputScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slideshow,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: 'ListviewBuilder',
        icon: Icons.list,
        name: 'ListView Builder',
        screen: const ListviewBuilderScreen()),
  ];

  //TODO: Crear una funcion que devuelva una lista de rutas
  /* static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    return menuOptions.fold(
      <String, Widget Function(BuildContext)>{},
      (Map<String, Widget Function(BuildContext)> map, MenuOption option) {
        map[option.route] = (BuildContext context) => option.screen;
        return map;
      },
    );
  } */

  //TODO: Otra forma de crear una lista de rutas
  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes[initialRoute] = (BuildContext context) => const HomeScreen();

    for (final option in menuOptions) {
      appRoutes[option.route] = (BuildContext context) => option.screen;
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings, builder: (context) => const AlertScreen());
  }
}
