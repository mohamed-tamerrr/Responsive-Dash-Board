import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widgets/adaptive_layout.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dash_board_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tabletlayout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() =>
      _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width <
              SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width <
              SizeConfig.tablet
          ? CustomDrawer()
          : null,
      backgroundColor: Color(0xffE5E5E5),
      body: AdaptiveLayout(
        desktopLayout: (context) =>
            DashBoardDesktopLayout(),
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
      ),
    );
  }
}
