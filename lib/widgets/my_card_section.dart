import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() =>
      _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController controller;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      currentPage = controller.page!
          .round(); // Faster than toInt()
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyle.styleSemiBold20,
          ),
        ),
        const SizedBox(height: 20),
        MyCardPageView(controller: controller),
        const SizedBox(height: 20),
        DotsIndicator(currentPage: currentPage),
      ],
    );
  }
}
