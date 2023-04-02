import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_note/core/constant/strings.dart';
import '../constant/routes.dart';
import '../services/services.dart';

class MyMiddleware extends GetMiddleware{

@override
  int? priority = 0;

 MyServices myServices=Get.find();
  @override
  RouteSettings? redirect(String? route)  {
    if(myServices.sharedPre.getBool(AppStrings.langCodeStore)== true){
      return const RouteSettings(name: AppRoute.main);
    }
  }



}