import 'package:flutter/material.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/login_page.dart';
import 'package:quizapp/pages/edit_profile/edit_profile_view.dart';
import 'package:quizapp/pages/home_quize_page/home_quize_page.dart';
import 'package:quizapp/pages/home_quize_page/root_homepage.dart';
import 'package:quizapp/pages/my_profile/my_profile_view.dart';
import 'package:quizapp/pages/on_boarding_one/on_boarding_one_view.dart';
import 'package:quizapp/pages/on_boarding_one/widgets/custom_on_boarding_one_body.dart';
import 'package:quizapp/pages/onboarding/onboarding_view.dart';
import 'package:quizapp/utilites/appcolors.dart';

import 'pages/Auth_pages/signUp/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.primary,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColor.primary,
        ),
      ),
      home: const OnBoardingView(),
    );
  }
}
