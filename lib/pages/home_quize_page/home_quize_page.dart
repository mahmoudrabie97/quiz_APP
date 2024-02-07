import 'package:flutter/material.dart';
import 'package:quizapp/pages/home_quize_page/widgets/categories_item_widget.dart';
import 'package:quizapp/pages/home_quize_page/widgets/containeritems.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customcontainermode.dart';
import 'package:quizapp/pages/home_quize_page/widgets/custompointscontainer.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customsearch.dart';
import 'package:quizapp/pages/home_quize_page/widgets/listviewitemmode.dart';
import 'package:quizapp/pages/quiz_summary/quizsummaryview.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class HomeQuizePage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  HomeQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .4,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Column(
                      children: [TitleRow(), CustomPointContainer()],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .28,
                left: 2,
                right: 2,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1, // عدد عناصر القائمة
                    itemBuilder: (BuildContext context, int index) {
                      return const Listvuewitemmode(); // عنصر القائمة المتكرر
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 15,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomSearch(emailController: _emailController, field1: field1),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Explore Categories',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
                GestureDetector(
                    onTap: () {
                      context.push(QuizSummary());
                    },
                    child: CustomText(text: 'view all', color: Colors.grey)),
              ],
            ),
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
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
