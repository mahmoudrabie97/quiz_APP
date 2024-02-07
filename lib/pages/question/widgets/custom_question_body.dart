import 'package:flutter/material.dart';
import 'package:quizapp/pages/question/widgets/custom_bottom_sheet_ietm.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/widgets/custombutton.dart';
import '../../solo_quize/widgets/custom_row_question_body.dart';
import 'custom_main_container_question.dart';
import 'custom_row_question_appbar.dart';
import 'custom_stack_answer.dart';
import 'custom_write_container_qeustion.dart';

class CustomQuestionBody extends StatelessWidget {
  const CustomQuestionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CustomMainContainerQuestion(height: height),
            //SizedBox(height: MediaQuery.of(context).size.height * .1,),
            Positioned(
              left: 15,
              right: 15,
              top: 120,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: const CustomWriteContainerQuestion(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 140,
        ),
        CustomStackAnswer(
          textWord: 'Russia',
          textLetter: 'A',
        ),
        CustomStackAnswer(
          textWord: 'America',
          textLetter: 'B',
        ),
        CustomStackAnswer(
          textWord: 'Australia',
          textLetter: 'C',
        ),
        CustomStackAnswer(
          textWord: 'Hong Kong',
          textLetter: 'D',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: CustomButton(
            buttonText: 'Next',
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return CustomShowBottomSheetIetm() ;
                },
              );
            },
            buttonColor: AppColor.primary,
            borderRadius: 22,
          ),
        ),
      ],
    );
  }
}

