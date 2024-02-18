import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';


class CustomSmallButtonFriendRequest extends StatelessWidget {
  const CustomSmallButtonFriendRequest({Key? key, required this.color, required this.text}) : super(key: key);
 final Color color;
 final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(text,style: Styles.style15.copyWith(color: AppColor.whiteColor),)),
      ),
    );
  }
}
