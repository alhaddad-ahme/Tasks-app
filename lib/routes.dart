import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_note/core/constant/routes.dart';
import 'package:todo_note/view/screens/mainScreen.dart';
import 'package:todo_note/view/screens/onBoardingScreen.dart';

import 'core/middleware/middleware.dart';
import 'view/screens/language.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
      name: '/',
      page: () => const LanguageScreen(),
      middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoardingScreen()),
  GetPage(name: AppRoute.main, page: () => const MainScreen())
];
