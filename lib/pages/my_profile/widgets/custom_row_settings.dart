import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';

import 'custom_circular_button.dart';

class CustomRowSettings extends StatelessWidget {
  const CustomRowSettings({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 27),
      child: Row(
        children: [
          Image.asset(image,width: 30,height: 30,),
          const SizedBox(width: 12,),
          Text(
            text,
            style: Styles.style14,
          ),
          const Spacer(),
          const CustomCircularButton(),
        ],
      ),
    );
  }
}
