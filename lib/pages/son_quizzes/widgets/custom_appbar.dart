import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        const SizedBox(width:88 ,),
        const Text('Son’s Quizzes',style: Styles.style28,),
      ],
    );
  }
}
