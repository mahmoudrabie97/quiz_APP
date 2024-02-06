import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/pages/solo_quize/widgets/custom_container_solo_quize_dollar.dart';
import 'package:quizapp/pages/solo_quize/widgets/custom_solo_quize_body.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

class SoloQuizeView extends StatelessWidget {
  const SoloQuizeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        backgroundColor: AppColor.primary,
        title: const Center(
            child: Text(
          'Solo Quiz',
          style: Styles.style26,
        )),
        actions: const [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: CustomContainerSoloQuizeDollar(text: '1245', width: 70,),
          ),
        ],
      ),
      body: const CustomSoloQuizeBody(),
    );
  }
}
