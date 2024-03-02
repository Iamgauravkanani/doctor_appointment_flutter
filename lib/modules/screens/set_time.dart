import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetTimeScreen extends StatelessWidget {
  const SetTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "asset/image/layer_blur.png",
            width: Get.width * .7,
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 17,
                          color: textPrimary,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Select Time",
                        style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
