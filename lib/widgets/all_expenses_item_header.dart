import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: imageBackground ?? Color(0xffFAFAFA),
          ),
          width: 60,
          height: 60,
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.keyboard_arrow_right,
          color: imageColor == null
              ? Color(0xff064061)
              : Colors.white,
        ),
      ],
    );
  }
}
