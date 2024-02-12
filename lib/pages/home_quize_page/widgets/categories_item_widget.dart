import 'package:flutter/material.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customcontainermode.dart';
import 'package:quizapp/pages/home_quize_page/widgets/smallcontainermode.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';

class CustomCategriesItem extends StatelessWidget {
  const CustomCategriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerContainerMode(
            modecolor: const Color(0xffC2B7FF),
            starttext: 'Start',
            modetext2: '',
            modetext: 'RandomQuiz',
            imagestring: AssetsData.choose,
            contaunerheight: MediaQuery.of(context).size.height * .38,
            containerwidth: 220,
            isremaintext: true,
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Column(
                children: [
                  SmallContainerMode(
                    modecolor: AppColor.greenColor,
                    starttext: 'Start',
                    modetext2: 'Verbal',
                    modetext: 'Questions',
                    imagestring: AssetsData.sport,
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 175,
                    isremaintext: true,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SmallContainerMode(
                    modecolor: AppColor.pink,
                    starttext: 'Start',
                    modetext2: 'Quantitive',
                    modetext: 'Questions',
                    imagestring: AssetsData.sport1,
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 175,
                    isremaintext: true,
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              // Column(
              //   children: [
              //     CustomerContainerMode(
              //       modecolor: const Color(0xff6AC38D),
              //       starttext: 'Sports',
              //       modetext2: '',
              //       modetext: '',
              //       imagestring: 'assets/svg/sports.png',
              //       contaunerheight: MediaQuery.of(context).size.height * .18,
              //       containerwidth: 120,
              //       isremaintext: false,
              //     ),
              //     SizedBox(
              //       height: 5,
              //     ),
              //     CustomerContainerMode(
              //       modecolor: const Color(0xffFEB3F3),
              //       starttext: 'English',
              //       modetext2: '',
              //       modetext: '',
              //       imagestring: 'assets/svg/education-blocks.png',
              //       contaunerheight: MediaQuery.of(context).size.height * .18,
              //       containerwidth: 120,
              //       isremaintext: false,
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
