import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../controller/onBoardingController.dart';

class CustomButtonNextPage extends GetView<OnBoardingControllerImp> {
  const CustomButtonNextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      onPressed: () {
        controller.next();
        
        // if(controller.currentPage==onBoardingList.length)

        
      },
      child: const Text(
        'Containeu',
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
