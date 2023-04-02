import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onBoardingController.dart';
import '../widgets/onBoarding/cusPageViewWidget.dart';
import '../widgets/onBoarding/custButtonNexPage.dart';
import '../widgets/onBoarding/custDotController.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            Expanded(
              child: CustomPageView(),
            ),
            CustomDotController(),
            SizedBox(
              height: 50,
            ),
            CustomButtonNextPage(),
          ],
        ),
      ),
    );
  }
}
