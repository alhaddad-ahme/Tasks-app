import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../Data/dataSours/static.dart';
import '../../../controller/onBoardingController.dart';

class CustomPageView extends GetView<OnBoardingControllerImp> {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
           const SizedBox(
            height: 70,
          ),
          Text(onBoardingList[index].title.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          Image.asset(
            onBoardingList[index].image.toString(),
            height: 400,
            width: 300,
          ),
          Text(onBoardingList[index].body.toString(),
              style: const TextStyle(
                fontSize: 20,
              )),
        ],
      ),
    );
  }
}
