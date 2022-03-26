import 'package:e_commerce_app/ui/shared/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle:
          SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white),
      titleTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: CustomColor.black,
      ),
      elevation: 0,
      centerTitle: true,
      color: Colors.white,
      shape: const Border(
        bottom: BorderSide(
          color: CustomColor.primaryLight,
          width: 1.1,
        ),
      ),
      iconTheme: const IconThemeData(
        color: CustomColor.black,
      ),
    ),
    fontFamily: 'BwNista',
    scaffoldBackgroundColor: Colors.white,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'BwNista',
          height: 1,
        ),
        primary: CustomColor.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        side: const BorderSide(color: CustomColor.black),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // primary: Colors.white,
        foregroundColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontFamily: 'BwNista',
              height: 1,
              color: Colors.white,
            );
          }
          return const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: 'BwNista',
            height: 1,
            color: Colors.white,
          );
        }),
        overlayColor: MaterialStateColor.resolveWith(
          (states) => Colors.white.withOpacity(.12),
        ),
        minimumSize: MaterialStateProperty.resolveWith<Size?>(
            (Set<MaterialState> states) {
          return const Size(double.infinity, 50);
        }),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
            (Set<MaterialState> states) {
          return const EdgeInsets.symmetric(horizontal: 16);
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          );
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return CustomColor.gray;
            }
            return CustomColor.primary;
          },
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        height: 1.6,
        fontWeight: FontWeight.normal,
        color: CustomColor.gray,
        fontFamily: 'BwNista',
      ),
    ),
  );
}
