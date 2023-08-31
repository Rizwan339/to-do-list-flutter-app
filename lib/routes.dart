import 'package:flutter/material.dart';

import 'appfunctions.dart';
import 'signup.dart';
import 'todo_initial_screen.dart';

class Routes {
  static const defaultRoute = "/";
  static const initialScreenRoute = "/AppInitialScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case defaultRoute:
        return MaterialPageRoute(
          builder: (_) => const SignUp(),
        );
      case initialScreenRoute:
        var args = settings.arguments as InitialScreenArguments;
        return MaterialPageRoute(
            builder: (_) => AppInitialScreen(
                  tasks: [],
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
