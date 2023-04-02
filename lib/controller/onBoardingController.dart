import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_note/core/constant/strings.dart';

import '../Data/dataSours/static.dart';
import '../core/constant/routes.dart';
import '../core/services/services.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices=Get.find();
  @override
  next() {
    if (currentPage == onBoardingList.length - 1) {
      //'ShowOnBoarding'
      myServices.sharedPre.setBool(AppStrings.IsShownBoardingStore, true);
      Get.offAllNamed(AppRoute.main);
    } else {
      currentPage++;
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 90), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
