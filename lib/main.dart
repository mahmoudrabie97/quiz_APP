import 'package:flutter/material.dart';
import 'package:quizapp/pages/onboarding/on_boarding_one/on_boarding_one_view.dart';
import 'package:quizapp/utilites/appcolors.dart';

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
        canvasColor: AppColor.primary,
        scaffoldBackgroundColor: AppColor.primary,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColor.primary,
        ),
      ),
      home: const OnBoardingOneView(),
    );
  }
}
// theme: new ThemeData(
//         primarySwatch: Colors.blue,
//         canvasColor: Colors.green
//       ),