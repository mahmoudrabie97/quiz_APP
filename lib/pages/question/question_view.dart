import 'package:flutter/material.dart';
import 'package:quizapp/pages/question/widgets/custom_question_body.dart';
import 'package:quizapp/utilites/appcolors.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.lightGreyColor,
      // appBar: AppBar(
      //   backgroundColor: AppColor.primary,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: AppColor.whiteColor,
      //     ),
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.menu_outlined,color: AppColor.whiteColor,),
      //     ),
      //   ],
      // ),
      body: SafeArea(child: CustomQuestionBody()),
    );
  }
}
