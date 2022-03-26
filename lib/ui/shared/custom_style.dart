import 'package:e_commerce_app/ui/shared/custom_color.dart';
import 'package:flutter/material.dart';

class CustomStyle {
  static TextStyle textH1 = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textH2 = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textH3 = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textH3Thin = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: CustomColor.black,
  );

  static TextStyle textH4 = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );
  static TextStyle textH4White = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle textH4Blue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColor.metalBlue,
  );

  static TextStyle textH4Dark = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textRegularH4 = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: CustomColor.black,
  );

  static TextStyle textH5DarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textH5Blue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: CustomColor.metalBlue,
  );

  static TextStyle textBoldDarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textH7DarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: CustomColor.black,
  );

  static TextStyle textMediumDarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: CustomColor.black,
  );

  static TextStyle textDarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 14,
    color: CustomColor.black,
  );

  static TextStyle textDark = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 14,
    color: CustomColor.black,
  );

  static TextStyle textBody = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 14,
    color: CustomColor.gray,
  );

  static TextStyle textSmallBody = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 12,
    color: CustomColor.gray,
  );

  static TextStyle textSmallDarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 12,
    color: CustomColor.black,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textSmall = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textChip = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: CustomColor.mediumGray,
    height: 1.2,
  );

  static TextStyle textSmallDark = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 12,
    color: CustomColor.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textTinyDarkBlue = const TextStyle(
    fontFamily: 'BwNista',
    fontSize: 10,
    color: CustomColor.black,
    fontWeight: FontWeight.normal,
  );

  static ButtonStyle buttonPrimarySmall = TextButton.styleFrom(
    primary: Colors.white,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 11,
      fontFamily: 'BwNista',
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    backgroundColor: CustomColor.primary,
  );

  static ButtonStyle buttonFilter = TextButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: 'BwNista',
      height: 1.4,
    ),
    primary: CustomColor.primary,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
    padding: const EdgeInsets.all(2),
    backgroundColor: CustomColor.primaryLight,
  );

  static ButtonStyle buttonFilterActive = TextButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: 'BwNista',
      height: 1.4,
    ),
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
    padding: const EdgeInsets.all(2),
    backgroundColor: CustomColor.primary,
  );

  static BoxDecoration boxShadow = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    boxShadow: [
      BoxShadow(
        color: CustomColor.shadowBlue,
        spreadRadius: 5,
        blurRadius: 50,
        offset: Offset(0, 8),
      ),
    ],
  );

  static BoxDecoration boxLightGreen = const BoxDecoration(
    color: CustomColor.primaryLight,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
  );

  static BoxDecoration boxGreen = const BoxDecoration(
    color: CustomColor.primary,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
  );

  static BoxDecoration boxRed = const BoxDecoration(
    color: CustomColor.red,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
  );

  static BoxDecoration borderBottom = const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1.1,
        color: CustomColor.primaryLight,
      ),
    ),
  );
}
