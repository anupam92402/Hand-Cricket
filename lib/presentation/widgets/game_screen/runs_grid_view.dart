import 'package:flutter/material.dart';

import '../../../utils/assets_path.dart';

class RunsGridView extends StatelessWidget {
  const RunsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 16,
      children: List.generate(6, (index) {
        return InkWell(
          onTap: () {
            print('index $index');
          },
          child: Image.asset(
            getImage(index + 1),
            width: 64,
            height: 64,
            fit: BoxFit.contain,
          ),
        );
      }),
    );
  }

  String getImage(int index) {
    switch (index) {
      case 1:
        return AssetsPath.one;
      case 2:
        return AssetsPath.two;
      case 3:
        return AssetsPath.three;
      case 4:
        return AssetsPath.four;
      case 5:
        return AssetsPath.five;
      case 6:
        return AssetsPath.six;
      default:
        return ''; // fallback if index is invalid
    }
  }
}
