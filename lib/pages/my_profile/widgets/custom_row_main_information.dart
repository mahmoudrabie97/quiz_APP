import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/custombutton.dart';

import '../../../utilites/widgets/custom_small_button_text.dart';

class CustomRowMainInformation extends StatelessWidget {
  const CustomRowMainInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,top: 12),
      child: Row(
        children: [
          Image.asset(AssetsData.person),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enas Omar',
                style: Styles.style20.copyWith(color: Color(0x61000000)),
              ),
              Text(
                'enasomar1588@gmail.com',
                style: Styles.style17,
              ),
              CustomSmallButtonText(text: 'EDIT PROFILE',)
            ],
          ),
        ],
      ),
    );
  }
}
