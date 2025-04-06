import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_cricket/domain/models/route/players_info_route_model.dart';
import 'package:hand_cricket/presentation/views/rules_screen.dart';
import 'package:hand_cricket/utils/routes_name.dart';
import 'package:hand_cricket/utils/string_constants.dart';

import '../presentation/blocs/game_bloc.dart';
import '../presentation/views/game_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.rulesScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RoutesName.rulesScreen),
            builder: (context) => const RulesScreen());

      case RoutesName.gameScreen:
        PlayerInfoRouteModel playerInfoRouteModel =
            settings.arguments as PlayerInfoRouteModel;

        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => GameBloc(),
                  child:  GameScreen(
                      playerInfoRouteModel: playerInfoRouteModel),
                ));

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
