import 'package:flutter/material.dart';
import 'package:quizapp/pages/son_quizzes/widgets/custom_appbar.dart';
import 'package:quizapp/pages/son_quizzes/widgets/custom_main_container_son_quizes.dart';


class SonQuizzesView extends StatelessWidget {
  const SonQuizzesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
     body: SafeArea(
       child: Column(
          children: [
            CustomAppbar(),
            CustomMainContainerSonQuizes()
          ],
        ),

     ),
    );
  }
}
