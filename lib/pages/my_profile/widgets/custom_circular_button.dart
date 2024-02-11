import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      child: Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
              color: AppColor.lightGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child:
          Center(
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColor.darkGrey,

            ),
          )),
    );
  }
}
