import 'package:chat_gpt/product/constants/color_constant.dart';
import 'package:flutter/material.dart';

/// Application Dark Theme Class
class DarkTheme {
  /// Applications Dark Theme
  DarkTheme() {
    darkTheme = ThemeData.dark().copyWith(
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w700,
          color: ColorConstant.hollyGreen,
        ),
        titleSmall: TextStyle(
          color: ColorConstant.darkGrey,
          fontFamily: _fontFamily,
        ),
        bodyLarge: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorConstant.cynicalBlack,
      ),
      scaffoldBackgroundColor: ColorConstant.blackWash,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorConstant.hollyGreen,
        shape: CircleBorder(),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(_buttonWidth, _buttonheight),
          backgroundColor: ColorConstant.hollyGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                _buttonRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
  final double _buttonWidth = 320;
  final double _buttonheight = 90;
  final double _buttonRadius = 15;
  final String _fontFamily = 'Inter';

  /// Applications dark theme constructor
  late ThemeData darkTheme;
}
