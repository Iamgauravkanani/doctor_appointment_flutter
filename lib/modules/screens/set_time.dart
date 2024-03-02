import 'package:doctor_app/modules/config/colors.dart';
import 'package:doctor_app/modules/config/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetTimeScreen extends StatefulWidget {
  const SetTimeScreen({super.key});

  @override
  State<SetTimeScreen> createState() => _SetTimeScreenState();
}

class _SetTimeScreenState extends State<SetTimeScreen> {
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
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
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
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                          child: Image.asset("asset/favdoc/img_doc.jpeg"),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dr. Shruti Kedia",
                              style: rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Upasana Dental Clinic, salt lake",
                              style: rubik(
                                fontSize: 12,
                                color: textPrimary,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            StarRating(
                              color: const Color(0xffF6D060),
                              onRatingChanged: (val) {},
                              rating: 4,
                              starCount: 5,
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.favorite_rounded,
                        size: 20,
                        color: Color(0xffFF0000),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: timeSlot
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              selectedIndex = timeSlot.indexOf(e);
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  right:
                                      timeSlot.indexOf(e) == timeSlot.length - 1
                                          ? 0
                                          : 16),
                              padding: const EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    selectedIndex == timeSlot.indexOf(e)
                                        ? 6
                                        : 4),
                                color: selectedIndex == timeSlot.indexOf(e)
                                    ? btnColor
                                    : Colors.transparent,
                                border: selectedIndex != timeSlot.indexOf(e)
                                    ? Border.all(
                                        width: 1,
                                        color: textPrimary.withOpacity(.10),
                                      )
                                    : null,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    e['time'] ?? "",
                                    style: rubik(
                                      fontSize: 16,
                                      color:
                                          selectedIndex == timeSlot.indexOf(e)
                                              ? Colors.white
                                              : const Color(0xff333333),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    e['slot'] ?? "",
                                    style: rubik(
                                      fontSize: 10,
                                      color:
                                          selectedIndex == timeSlot.indexOf(e)
                                              ? Colors.white
                                              : textPrimary,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  timeSlot[selectedIndex]['time'] ?? "",
                  style: rubik(
                    fontSize: 16,
                    color: const Color(0xff222222),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  timeSlot[selectedIndex]['slot'] ?? "",
                  style: rubik(
                    fontSize: 14,
                    color: textPrimary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: FilledButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(btnColor),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(Get.width - 20, 54),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(16))),
                    onPressed: () {},
                    child: Text(
                      "Next availability on wed, 24 Feb",
                      style: rubik(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    "or".toUpperCase(),
                    style: rubik(
                      fontSize: 14,
                      color: textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: FilledButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: btnColor, width: 1)),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(Get.width - 20, 54),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(16))),
                    onPressed: () {},
                    child: Text(
                      "Contact Clinic",
                      style: rubik(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: btnColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  int selectedIndex = 1;

  List<Map<String, String>> timeSlot = [
    {"time": "Today, 23 Feb", "slot": "No slots available"},
    {"time": "Tomorrow, 24 Feb", "slot": "9 slots available"},
    {"time": "Thu, 25 Feb", "slot": "10 slots available"},
    {"time": "Fri, 26 Feb", "slot": "6 slots available"},
    {"time": "Sat, 27 Feb", "slot": "8 slots available"},
  ];
}

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;
  final double size;

  const StarRating(
      {super.key,
      this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      required this.color,
      this.size = 15});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_rounded,
        size: size,
        color: const Color(0xffE2E5EA),
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        size: size,
        Icons.star_half,
        color: color,
      );
    } else {
      icon = Icon(
        Icons.star,
        size: size,
        color: color,
      );
    }
    return InkResponse(
      onTap: () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
