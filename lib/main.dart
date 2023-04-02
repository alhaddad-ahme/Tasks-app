import 'package:flutter/material.dart';
import 'package:todo_note/controller/localController.dart';
import 'package:todo_note/controller/onBoardingController.dart';
import 'package:todo_note/core/services/services.dart';
import 'package:todo_note/routes.dart';
import 'package:todo_note/view/screens/language.dart';
import 'package:todo_note/view/screens/mainScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo_note/view/screens/onBoardingScreen.dart';

import 'core/localization/translate.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await initialServeries();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslate(),
      locale: controller.language,
      theme: controller.themeData,
      title: 'ToDo & Notes',
      getPages: pages,
    );
  }
}
