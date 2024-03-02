// ignore: unnecessary_import
import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/lists.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:doctor_app/modules/screens/set_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PopularDoctor extends StatefulWidget {
  const PopularDoctor({super.key});

  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.08,
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
                      width: Get.width * 0.75,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      color: textPrimary,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Popular Doctor",
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
                Text(
                  "Category",
                  style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: popularList
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(.04),
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 71,
                                    width: 71,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset(
                                          "asset/favdoc/img_doc.jpeg"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${e['name']}",
                                          style: rubik(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "${e['position']}",
                                          style: rubik(
                                            fontSize: 14,
                                            color: textPrimary,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: StarRating(
                                                color: const Color(0xffF6D060),
                                                onRatingChanged: (val) {},
                                                rating: 4,
                                                starCount: 5,
                                              ),
                                            ),
                                            Text(
                                              "${e['rating']}",
                                              style: rubik(
                                                  fontWeight: FontWeight.w500,
                                                  color: textPrimary,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "(${e['views']} views)",
                                              style: rubik(
                                                  fontWeight: FontWeight.w500,
                                                  color: textPrimary
                                                      .withOpacity(0.8),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  (popularList.indexOf(e) % 2 == 0)
                                      ? Icon(
                                          Icons.favorite_outline_outlined,
                                          size: 20,
                                          color: textPrimary,
                                        )
                                      : const Icon(
                                          Icons.favorite_rounded,
                                          size: 20,
                                          color: Color(0xffFF0000),
                                        ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
