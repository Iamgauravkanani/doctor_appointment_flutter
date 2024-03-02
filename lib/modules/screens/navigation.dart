import 'package:doctor_app/modules/config/asset.dart';
import 'package:doctor_app/modules/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView(
              controller: controller,
              onPageChanged: (val) {
                setState(() {
                  currentIndex = val;
                  controller.animateToPage(val,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear);
                });
              },
              children: const [
                Center(child: Text("Page 1")),
                Center(child: Text("Page 2"))
              ],
            ),
          ),
          Container(
              width: Get.width,
              height: Get.height * 0.1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.animateToPage(0,
                            duration: const Duration(microseconds: 100),
                            curve: Curves.linear);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: (currentIndex == 0) ? btnColor : Colors.white,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        Assets.home,
                        color: (currentIndex == 0) ? Colors.white : navColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.animateToPage(1,
                            duration: const Duration(microseconds: 100),
                            curve: Curves.linear);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: (currentIndex == 1) ? btnColor : Colors.white,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        Assets.heart,
                        color: (currentIndex == 1) ? Colors.white : navColor,
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: (currentIndex == 2) ? btnColor : Colors.white,
                        shape: BoxShape.circle),
                    child: Image.asset(
                      Assets.book,
                      color: (currentIndex == 2) ? Colors.white : navColor,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: (currentIndex == 3) ? btnColor : Colors.white,
                        shape: BoxShape.circle),
                    child: Image.asset(
                      Assets.message,
                      color: (currentIndex == 3) ? Colors.white : navColor,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
