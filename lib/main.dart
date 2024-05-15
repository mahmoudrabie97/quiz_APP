import 'package:flutter/material.dart';
import 'package:quizapp/pages/my_wallet/my_walletpage.dart';
import 'package:quizapp/pages/add_friends/add_friends.dart';
import 'package:quizapp/pages/available_players/widgets/available_players_view.dart';
import 'package:quizapp/pages/friend_reqeuest/friend_request_view.dart';
import 'package:quizapp/pages/onboarding/on_boarding_one/on_boarding_one_view.dart';
import 'package:quizapp/pages/onboarding/onboarding_2/onboarding_view.dart';
import 'package:quizapp/pages/terms_of_services/terms_of_services_page.dart';
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