import 'package:flutter/material.dart';
import 'package:todo_note/core/constant/color.dart';
import 'package:todo_note/core/constant/strings.dart';

ThemeData themEnglish = ThemeData(
  fontFamily:  AppStrings.fontAref,
  primaryColor: AppColor.blue,
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 20,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
      )),
);

ThemeData themArabic = ThemeData(
  fontFamily:  AppStrings.fontCairo,
  primaryColor: AppColor.blue,
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 20,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
      )),
);
