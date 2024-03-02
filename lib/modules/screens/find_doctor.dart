import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

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
                        "Find Doctors",
                        style: rubik(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Container(
                    height: 54,
                    width: Get.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(.04),
                        ),
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
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 92,
                                    width: 92,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset(
                                          "asset/favdoc/img_doc.jpeg"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Dr. Shruti Kedia",
                                        style: rubik(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "Tooths Dentist",
                                        style: rubik(
                                          fontSize: 13,
                                          color: btnColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "7 Years experience",
                                        style: rubik(
                                          fontSize: 12,
                                          color: textPrimary,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: btnColor),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                "87%",
                                                style: rubik(
                                                  fontSize: 11,
                                                  color: textPrimary,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 17,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: btnColor),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                "69 Patient Stories",
                                                style: rubik(
                                                  fontSize: 11,
                                                  color: textPrimary,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 17,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Next Available ",
                                        style: rubik(
                                          fontSize: 13,
                                          color: btnColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: "10:00 ",
                                            style: rubik(
                                              fontSize: 13,
                                              color: textPrimary,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "AM tomorrow",
                                                style: rubik(
                                                  fontSize: 12,
                                                  color: textPrimary,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                  FilledButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(btnColor),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                        padding: const MaterialStatePropertyAll(
                                            EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 10))),
                                    onPressed: () {
                                      Get.toNamed('/setTime');
                                    },
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
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
