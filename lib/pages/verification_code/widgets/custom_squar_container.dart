import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';
class CustomSquarContainer extends StatelessWidget {
  const CustomSquarContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(width: 2,color: AppColor.primary),
      ),
      child: Center(child: Text(text,style: Styles.style25,)),
    );
  }
}
