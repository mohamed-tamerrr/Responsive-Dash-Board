import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) =>
            DashBoardDesktopLayout(),
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
      ),
    );
  }
}
