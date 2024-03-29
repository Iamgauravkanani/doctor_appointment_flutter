import 'package:doctor_app/modules/screens/doctor_detail.dart';
import 'package:doctor_app/modules/screens/favdoctor.dart';
import 'package:doctor_app/modules/screens/find_doctor.dart';
import 'package:doctor_app/modules/screens/home_screen.dart';
import 'package:doctor_app/modules/screens/login.dart';
import 'package:doctor_app/modules/screens/popular_doctor.dart';
import 'package:doctor_app/modules/screens/set_time.dart';
import 'package:doctor_app/modules/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/screens/navigation.dart';
import 'modules/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const splash()),
        GetPage(name: '/signup', page: () => const SignUp()),
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/nav', page: () => const Navigation()),
        GetPage(name: '/favdoc', page: () => const FavDoctor()),
        GetPage(name: '/findDoc', page: () => const FindDoctorScreen()),
        GetPage(name: '/setTime', page: () => const SetTimeScreen()),
        GetPage(name: '/docdetail', page: () => const DoctorDetail()),
        GetPage(name: '/populardoc', page: () => const PopularDoctor()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
