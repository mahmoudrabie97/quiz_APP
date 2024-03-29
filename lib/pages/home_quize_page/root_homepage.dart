import 'package:flutter/material.dart';
import 'package:quizapp/pages/category_page/category_page.dart';
import 'package:quizapp/pages/home_quize_page/home_quize_page.dart';
import 'package:quizapp/pages/my_profile/my_profile_view.dart';

import 'package:quizapp/pages/question/question_view.dart';
import 'package:quizapp/pages/qusetionPage/questionpage.dart';
import 'package:quizapp/utilites/appcolors.dart';

class RootHomePage extends StatefulWidget {
  const RootHomePage({Key? key}) : super(key: key);

  @override
  State<RootHomePage> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    HomeQuizePage(),
    const QuestionView(),
    const CategoryPage(),
    MyProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor : AppColor.whiteColor,
      fixedColor: AppColor.whiteColor,
     // selectedItemColor: AppColor.primary,


      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.question_mark), label: 'Questions'),
        BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded), label: 'Category'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded), label: 'Profile'),
      ],
    );
  }
}
