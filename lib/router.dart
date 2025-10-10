import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/choose_mode/pages/choose_mode_page.dart';
import 'package:spotify_app/presentation/intro/pages/intro_page.dart';
import 'package:spotify_app/presentation/splash/pages/splash_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SplashPage(),
      );
    case IntroPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => IntroPage(),
      );
    case ChooseModePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ChooseModePage(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder:
            (_) => Scaffold(
              body: Center(child: Text('Page does not exist!')),
            ),
      );
  }
}
