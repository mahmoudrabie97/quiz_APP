import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomBalancedContainer extends StatelessWidget {
  const CustomBalancedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(40),
        ),
        // ignore: prefer_const_constructors
        child: Center(
          child: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Balance', color: Colors.white),
                    CustomText(
                        text: '\$1234',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Card',
                      color: Colors.white,
                    ),
                    CustomText(
                      text: 'Mabank',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
