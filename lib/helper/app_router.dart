import 'package:bmi_calculator/view/setting.dart';
import 'package:flutter/material.dart';

import '../constant/string.dart';
import '../view/operation.dart';
import '../view/result.dart';
import '../view/splash.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRoutes.initRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case MyRoutes.operationRoute:
        return MaterialPageRoute(builder: (context) => const OperationScreen());

      case MyRoutes.resultRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const ResultScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

      case MyRoutes.settingsRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SettingsScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

      default:
        return null;
    }
  }
}
/*
SlideTransition: Slides the widget in a particular direction.
ScaleTransition: Scales the size of the widget.
RotationTransition: Rotates the widget.
FadeTransition: Fades the opacity of the widget.
SizeTransition: Animates the size of the widget.
RelativeRectTween: Animates a Rect relative to a specified ancestor widget.
PositionedTransition: Animates the position of the widget.
DecoratedBoxTransition: Animates changes to the shape of the box of the widget.
DefaultTextStyleTransition: Animates changes to the text style of the widget.
 */