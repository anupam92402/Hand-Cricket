import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/widgets/rules_screen/first_rule_widget.dart';
import 'package:hand_cricket/presentation/widgets/rules_screen/rules_screen_title_widget.dart';
import 'package:hand_cricket/presentation/widgets/rules_screen/second_rule_widget.dart';
import 'package:hand_cricket/presentation/widgets/rules_screen/third_rule_widget.dart';

import '../../utils/app_colors.dart';
import '../widgets/rules_screen/bottom_button_widget.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.color021442, AppColors.color701213],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 64, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RulesScreenTitleWidget(),
              SizedBox(
                height: 48,
              ),
              FirstRuleWidget(),
              SizedBox(
                height: 16,
              ),
              SecondRuleWidget(),
              SizedBox(
                height: 16,
              ),
              ThirdRuleWidget(),
              SizedBox(
                height: 48,
              ),
              BottomButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
