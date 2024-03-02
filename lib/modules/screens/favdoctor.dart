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
              children: [
                SizedBox(
                  height: Get.height * 0.06,
                ),
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
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Text(
                      "Favourite Doctors",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  height: 54,
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.04))
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
                SizedBox(
                  height: Get.height * 0.04,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
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
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              spreadRadius: 0.0001,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.07))
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
                SizedBox(
                  height: Get.height * 0.03,
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
                SizedBox(
                  height: Get.height * 0.03,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: docList
                        .map((e) => Container(
                              margin: EdgeInsets.all(5),
                              width: 105,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 0),
                                      spreadRadius: 0.0001,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.07)),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      (docList.indexOf(e) % 2 != 0)
                                          ? Image.asset(
                                              Assets.redlike,
                                              height: 9,
                                              width: 8,
                                            )
                                          : Image.asset(
                                              Assets.like,
                                              height: 9,
                                              width: 8,
                                              color: textPrimary,
                                            ),
                                      Text(
                                        "⭐${e['rating']}",
                                        style: rubik(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Image.asset(e['image']),
                                  Text(
                                    "${e['name']}",
                                    style: rubik(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$",
                                        style: rubik(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: btnColor),
                                      ),
                                      Text(
                                        "${e['rate']}/hour",
                                        style: rubik(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textPrimary),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
