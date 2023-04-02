import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/constant/theme.dart';
import '../core/services/services.dart';
import '../core/constant/strings.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData themeData = themArabic;
  choseLocal(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPre.setString(AppStrings.langCodeStore, langCode);
    // myServices.sharedPre.setString('lang', langCode);
    themeData = langCode == AppStrings.langCodeArabic ? themArabic : themEnglish;
    Get.changeTheme(themeData);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? langShardPre = myServices.sharedPre.getString(AppStrings.langCodeStore).toString();
    if (langShardPre ==  AppStrings.langCodeArabic) {
      language =  Locale(AppStrings.langCodeArabic);
      themeData = themArabic;
    } else if (langShardPre ==  AppStrings.langCodeEnglish) {
      language =  Locale(AppStrings.langCodeEnglish);
      themeData = themEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
