
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_note/core/constant/strings.dart';

import '../../controller/localController.dart';
import '../../core/constant/routes.dart';
import '../widgets/appWidgets/button.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Language',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'chose Language'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, color: Colors.blue),
            ),
            AppButton(onPressed: () {
              controller.choseLocal(AppStrings.langCodeArabic);
              Get.offNamed(AppRoute.onBoarding);
            }, textButton: "Arabia"),
            AppButton(onPressed: () {
              controller.choseLocal(AppStrings.langCodeEnglish);
              Get.offNamed(AppRoute.onBoarding);
            }, textButton: "English")
          ],
        ),
      ),
    );
  }
}
