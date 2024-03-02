import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/lists.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/asset.dart';

class FavDoctor extends StatelessWidget {
  const FavDoctor({super.key});

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    Text(
                      "Favourite Doctors",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  height: 54,
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 0.0,
                          color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Icon(
                        Icons.search,
                        color: textPrimary,
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Text(
                        "Dentist",
                        style: rubik(
                            color: textPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: Get.width * 0.56,
                      ),
                      Icon(
                        Icons.cancel_outlined,
                        color: textPrimary,
                      )
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: favdoclist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 0,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(favdoclist[index]['image']),
                              Text(
                                "${favdoclist[index]['name']}",
                                style: rubik(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "${favdoclist[index]['position']}",
                                style: rubik(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: btnColor),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Image.asset(
                              Assets.like,
                              height: 15,
                              width: 16.76,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    Text(
                      "Feature Doctor",
                      style: rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See all >",
                      style: rubik(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: textPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
