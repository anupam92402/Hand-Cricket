import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/views/rules_screen.dart';
import 'package:hand_cricket/utils/routes_name.dart';
import 'package:hand_cricket/utils/string_constants.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.rulesScreen:
        return MaterialPageRoute(builder: (context) => const RulesScreen());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text(StringConstants.navigationError),
              ),
            );
          },
        );
    }
  }
}
