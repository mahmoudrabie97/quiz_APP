import 'package:flutter/material.dart';
import 'package:quizapp/pages/random_quize/widgets/custom_sub_container.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';

import '../home_quize_page/widgets/categories_item_widget.dart';
import '../home_quize_page/widgets/custom_sub_container.dart';
import '../home_quize_page/widgets/smallcontainermode.dart';

class RandomQuizePage extends StatelessWidget {
  const RandomQuizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
      ),
      body: const Column(
        children: [
          CustomSubContainerQuize(
            color: AppColor.pinkLight,
            image: AssetsData.student, text: 'Training',
          ),
          CustomSubContainerQuize(
            color: AppColor.pink,
            image: AssetsData.young, text: ' Solo \n Mode',
          ),
          CustomSubContainerQuize(
            color: AppColor.lightGreenColor,
            image: AssetsData.old, text: '1.VS.1',
          ),
        ],
      ),
    );
  }
}
