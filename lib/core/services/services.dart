import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService{

  late SharedPreferences sharedPre;
  // final getStoreg=GetStorage();

  Future<MyServices> init()async {
    sharedPre = await SharedPreferences.getInstance();
    return this;
  }


}
// localization
  initialServeries()async{
    await Get.putAsync(() => MyServices().init());
  }