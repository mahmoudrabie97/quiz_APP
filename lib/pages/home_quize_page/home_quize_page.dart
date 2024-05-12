import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/pages/home_quize_page/widgets/categories_item_widget.dart';
import 'package:quizapp/pages/home_quize_page/widgets/containeritems.dart';
import 'package:quizapp/pages/home_quize_page/widgets/custom_sub_container.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customcontainermode.dart';
import 'package:quizapp/pages/home_quize_page/widgets/custompointscontainer.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customsearch.dart';
import 'package:quizapp/pages/home_quize_page/widgets/listviewitemmode.dart';
import 'package:quizapp/pages/quiz_summary/quizsummaryview.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class HomeQuizePage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();

  HomeQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          TitleRow(),
          CustomPointContainer(),
          CustomSubContainer(),
          const SizedBox(
            height: 20,
          ),
          // CustomSearch(emailController: _emailController, field1: field1),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: 'Explore Categories',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1, // عدد العناصر في القائمة
                      itemBuilder: (BuildContext context, int index) {
                        return CustomCategriesItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
