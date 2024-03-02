import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAndToNamed('/signup');
    });
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              "asset/image/layer_blur.png",
              width: Get.width * .7,
            ),
          ),
          Positioned(
            bottom: -20,
            right: 0,
            child: Image.asset(
              "asset/image/bottom_layer.png",
              height: Get.height * .4,
              width: Get.width * .7,
            ),
          ),
          Center(
            child: Image.asset(
              "asset/Logo.png",
              height: 105,
              width: 205,
            ),
          )
        ],
      ),
    );
  }
}
