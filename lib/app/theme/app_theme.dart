import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:tim_task/app/constant/constants.dart';

class AppTheme {
  static  ThemeData ligthTheme (BuildContext context)=> ThemeData(
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: 16.paddingOnlyLeftRight,
      hintStyle: TextStyle(fontSize: 13, color: Colors.grey.shade600),
      enabledBorder: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(double.infinity, 44),
        foregroundColor: kButtonForgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: kSegmentRadius.borderRadius,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: kTextButtonDarkColor,
      ),
    ),
  );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData.dark(useMaterial3: true).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ThemeData.dark(useMaterial3: true).scaffoldBackgroundColor,
      contentPadding: 16.paddingOnlyLeftRight,
      hintStyle: TextStyle(fontSize: 13, color: Colors.grey.shade400),
      enabledBorder: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: kTextFieldBorderRadius.borderRadius,
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryDarkColor,
        minimumSize: const Size(double.infinity, 44),
        foregroundColor: kButtonForgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: kSegmentRadius.borderRadius,
        ),
      ),
    ),
  );
}
