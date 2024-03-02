import 'package:doctor_app/modules/config/colors.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/asset.dart';
import '../config/styles.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      "Doctor Details",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  height: 170,
                  width: 335,
                  padding: const EdgeInsets.all(8),
                  decoration: myBoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.03, top: Get.width * 0.01),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset(Assets.dimg),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Dr. Pediatrician",
                                        style: rubik(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.075,
                                      ),
                                      Image.asset(Assets.redlike)
                                    ],
                                  ),
                                  Text(
                                    "Specialist Cardiologist ",
                                    style: rubik(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: textPrimary),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Assets.star,
                                        height: 13,
                                        width: 83,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.075,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$",
                                            style: rubik(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: btnColor),
                                          ),
                                          Text(
                                            "28.00/hr",
                                            style: rubik(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: textPrimary),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(btnColor),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(Get.width * 0.45, Get.height * 0.05),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Book Now",
                            style: rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                rateContainer(),
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Services",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1.",
                      style: rubik(
                          color: btnColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Patient care should be the number one priority.",
                      style: rubik(
                          color: textPrimary.withOpacity(0.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Divider(
                  color: textPrimary.withOpacity(0.1),
                ),
                Row(
                  children: [
                    Text(
                      "2.",
                      style: rubik(
                          color: btnColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "If you run your practiceyou know how frustrating.",
                      style: rubik(
                          color: textPrimary.withOpacity(0.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Divider(
                  color: textPrimary.withOpacity(0.1),
                ),
                Row(
                  children: [
                    Text(
                      "3.",
                      style: rubik(
                          color: btnColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "That’s why some of appointment reminder system.",
                      style: rubik(
                          color: textPrimary.withOpacity(0.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Divider(
                  color: textPrimary.withOpacity(0.1),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: Get.height * 0.25,
                  width: Get.width * 0.95,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.04))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(Assets.map),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration myBoxDecoration() => BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 0),
              spreadRadius: 0,
              blurRadius: 10,
              color: Colors.black.withOpacity(0.04))
        ],
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      );

//btn
  Widget rateContainer() => Container(
        height: Get.height * 0.11,
        width: Get.width * 0.75,
        decoration: myBoxDecoration(),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffCBCBCB).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(
                    left: 10, right: 5, top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      "100",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text("Running",
                        style: rubik(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: textPrimary)),
                    SizedBox(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffCBCBCB).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      "500",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text("OnGoing",
                        style: rubik(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: textPrimary)),
                    SizedBox(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffCBCBCB).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      "700",
                      style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text("Patient",
                        style: rubik(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: textPrimary)),
                    SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
