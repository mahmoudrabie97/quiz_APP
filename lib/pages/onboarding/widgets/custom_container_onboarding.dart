import 'package:flutter/material.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/assets.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';

class CustomContainerOnBoarding extends StatelessWidget {
  const CustomContainerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .57,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(

          children: [
            const Text(
              'Login or Sign Up',
              style: Styles.style24,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Login or create an account to take quiz,',
              style: Styles.style16,
            ),
            const Text(
              'take part in challenge, and more. ',
              style: Styles.style16,
            ),
            const SizedBox(
              height: 49,
            ),
            CustomButton(buttonText: 'Login', onPressed:(){

            } , txtColor: AppColor.whiteColor,buttonColor: AppColor.primary,),
            const SizedBox(
              height: 28,
            ),
            CustomButton(buttonText: 'Create an account', onPressed:(){

            } , txtColor: AppColor.primary,buttonColor: AppColor.greyColor,),
          ],
        ),
      ),
    );
  }
}
