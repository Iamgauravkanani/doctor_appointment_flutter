import 'package:doctor_app/modules/config/asset.dart';
import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/lists.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:doctor_app/modules/screens/set_time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> service = [
    "asset/image/ic_tooth.png",
    "asset/image/ic_eye.png",
    "asset/image/ic_heart.png",
    "asset/image/ic_body.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 130,
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
          Column(
            children: [
              SizedBox(
                height: 210,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff0EBE7E),
                              Color(0xff07D9AD),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 11),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hi Handwerker!",
                                      style: rubik(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "Find Your Doctor",
                                      style: rubik(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "asset/image/ic_user.png",
                                width: 60,
                                height: 60,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 54,
                        width: Get.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: textPrimary,
                            ),
                            Expanded(
                              child: Text(
                                "Search...",
                                style: rubik(
                                    color: textPrimary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Icon(
                              Icons.close,
                              size: 20,
                              color: textPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Live Doctors",
                            style: rubik(
                                color: const Color(0xff333333),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [1, 2, 3, 4]
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: SizedBox(
                                        height: 168,
                                        width: 115,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Image.asset(
                                                "asset/image/ic_doc.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(.20),
                                              ),
                                            ),
                                            Center(
                                              child: Image.asset(
                                                "asset/image/ic_play.png",
                                                height: 30,
                                                width: 30,
                                              ),
                                            ),
                                            Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffFA002F),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 9,
                                                        vertical: 6),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 5,
                                                      width: 6,
                                                      decoration:
                                                          const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "LIVE",
                                                      style: rubik(
                                                        color: Colors.white,
                                                        fontSize: 7,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: service
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        e,
                                        height: 90,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Popular Doctor",
                                  maxLines: 1,
                                  style: rubik(
                                      color: const Color(0xff333333),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/populardoc');
                                },
                                child: Text(
                                  "See all",
                                  style: rubik(
                                      color: textPrimary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 10,
                                color: textPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [1, 2, 3, 4, 5]
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 0),
                                          blurRadius: 15,
                                          color: Colors.black.withOpacity(.04),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "asset/image/ic_doc_2.png",
                                            height: 180,
                                            width: 190,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            "Dr. Fillerup Grab",
                                            style: rubik(
                                              color: const Color(0xff333333),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Medicine Specialist",
                                            style: rubik(
                                              color:
                                                  textPrimary.withOpacity(.80),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          StarRating(
                                            onRatingChanged: (val) {},
                                            color: const Color(0xffF6D060),
                                            rating: 4,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Feature Doctor",
                                  maxLines: 1,
                                  style: rubik(
                                      color: const Color(0xff333333),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed('/favdoc');
                                },
                                child: Text(
                                  "See all",
                                  style: rubik(
                                      color: textPrimary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 10,
                                color: textPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: docList
                              .map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 12),
                                      width: 105,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -1),
                                              blurRadius: 8,
                                              color: Colors.black
                                                  .withOpacity(0.06)),
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
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
