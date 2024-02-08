import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';


class CustomContainerThink extends StatelessWidget {
  const CustomContainerThink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .09,
      width: 1,
      color: AppColor.lightGreyColor,
    );
  }
}
