import 'package:flutter/material.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_column_quize_summary.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_container_think.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_tabs_tabBar.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:flutter/scheduler.dart' show TickerProviderStateMixin;
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: AppColor.whiteColor,
        ),
        child: ListView(
          children: const [
            CustomTabsOFtabBar(),
          ],
        ),
      ),
    );
  }
}
