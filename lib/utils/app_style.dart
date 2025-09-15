import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 12,
        context,
      ),
      color: Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 16,
        context,
      ),
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 16,
        context,
      ),
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 14,
        context,
      ),
      color: const Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 20,
        context,
      ),
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 24,
        context,
      ),
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 18,
        context,
      ),
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 16,
        context,
      ),
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 20,
        context,
      ),
      color: const Color(0xffFFFFFF),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        fontSize: 16,
        context,
      ),
      color: const Color(0xFF064061),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

// scaleFactor
// responsive font size
// (min , max) font size
double getResponsiveFontSize(
  BuildContext context, {
  required fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double reponsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = reponsiveFontSize * .8;
  double upperLimit = reponsiveFontSize * 1.2;
  return reponsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
