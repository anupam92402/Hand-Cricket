import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_cricket/presentation/blocs/game_bloc.dart';
import 'package:hand_cricket/presentation/widgets/game_screen/runs_grid_view.dart';
import 'package:hand_cricket/presentation/widgets/game_screen/versus_panel_widget.dart';
import 'package:hand_cricket/utils/assets_path.dart';
import 'package:hand_cricket/utils/routes_name.dart';
import 'package:hand_cricket/utils/string_constants.dart';

import '../../domain/models/route/players_info_route_model.dart';
import '../../utils/app_colors.dart';
import '../widgets/game_screen/countdown_timer_widget.dart';
import '../widgets/game_screen/game_header_widget.dart';
import '../widgets/game_screen/players_name_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.playerInfoRouteModel});

  final PlayerInfoRouteModel playerInfoRouteModel;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GameBloc>(context).add(GameInitializeEvent(
        player: widget.playerInfoRouteModel.player,
        bot: widget.playerInfoRouteModel.bot));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocListener<GameBloc, GameState>(
        listener: (context, state) {
          if (state is GameTimeOutState) {
            _showTimeoutDialog(context);
          }
        },
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GameHeaderWidget(),
                const VersusPanelWidget(),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetsPath.background),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      children: [
                        PlayersNameWidget(),
                        Spacer(),
                        CountdownTimerWidget(),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          StringConstants.pickNumberBeforeTimer,
                          style: TextStyle(
                              color: AppColors.colorFFFFFF,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        RunsGridView()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 12,
              top: 12,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.cancel,
                    color: AppColors.colorFFFFFF, size: 32),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _showTimeoutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents dismiss on tap outside
    builder: (context) {
      return AlertDialog(
        title: const Text(StringConstants.timeout),
        content: const Text(StringConstants.youRanOutTime),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .popUntil(ModalRoute.withName(RoutesName.rulesScreen));
            },
            child: const Text(StringConstants.okay),
          ),
        ],
      );
    },
  );
}
