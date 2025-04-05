import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/widgets/game_screen/runs_grid_view.dart';
import 'package:hand_cricket/presentation/widgets/game_screen/versus_panel_widget.dart';
import 'package:hand_cricket/utils/assets_path.dart';
import 'package:hand_cricket/utils/string_constants.dart';

import '../../utils/app_colors.dart';
import '../widgets/game_screen/countdown_timer_widget.dart';
import '../widgets/game_screen/game_header_widget.dart';
import '../widgets/game_screen/players_name_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
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
    );
  }
}
