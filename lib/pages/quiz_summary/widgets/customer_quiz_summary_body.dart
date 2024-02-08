import 'package:flutter/material.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_tabBar_item.dart';
import 'package:quizapp/pages/quiz_summary/widgets/customer_information_sumaary.dart';
import 'package:quizapp/pages/quiz_summary/widgets/customer_summary_quiz.dart';

class CustomerQuizSummaryBody extends StatelessWidget {
  const CustomerQuizSummaryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CustomerMainSummaryContainerQuiz(height: height),
            //SizedBox(height: MediaQuery.of(context).size.height * .1,),
            Positioned(
              left: 15,
              right: 15,
              top: 90,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                //jjjjjjjjjjjj
                child: const CustomerInformationSummary(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 140,
        ),
        const CustomTabBarItem(),
      ],
    );
  }
}
