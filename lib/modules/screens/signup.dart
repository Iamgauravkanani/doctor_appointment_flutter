import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../config/asset.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.2,
                ),
                Text(
                  "Join us to start searching",
                  style: rubik(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "You can search c ourse, apply course and fin\nscholarship for abroad studies",
                  textAlign: TextAlign.center,
                  style: rubik(
                    fontWeight: FontWeight.w400,
                    color: textPrimary,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 54,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 0),
                              spreadRadius: 0.0001,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.07))
                        ],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assets.google),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                          Text(
                            "Google",
                            style: rubik(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: textPrimary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 54,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 0),
                              spreadRadius: 0.0001,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.07))
                        ],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assets.fb),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                          Text(
                            "FaceBook",
                            style: rubik(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: black,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: textPrimary),
                          enabledBorder: outlineInputBorder(),
                          focusedBorder: outlineInputBorder(),
                          border: outlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        cursorColor: black,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: textPrimary),
                          enabledBorder: outlineInputBorder(radius: 4),
                          focusedBorder: outlineInputBorder(radius: 4),
                          border: outlineInputBorder(radius: 4),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        cursorColor: black,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: rubik(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: textPrimary),
                          enabledBorder: outlineInputBorder(),
                          focusedBorder: outlineInputBorder(),
                          border: outlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: textPrimary.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "I agree with the Terms of Service & Privacy Policy",
                            style: rubik(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textPrimary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      FilledButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(btnColor),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          minimumSize: MaterialStatePropertyAll(
                            Size(Get.width * 0.85, Get.height * 0.07),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/login');
                        },
                        child: Text(
                          "Sign Up",
                          style: rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                        "Have an account? Log in",
                        style:
                            rubik(color: btnColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({double radius = 12}) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: textPrimary.withOpacity(0.16),
        ),
        borderRadius: BorderRadius.circular(radius),
      );
}
