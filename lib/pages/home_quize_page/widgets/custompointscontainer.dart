import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomPointContainer extends StatelessWidget {
  const CustomPointContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .12,
        decoration: BoxDecoration(
          color: AppColor.pink,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/svg/podium 1.jpg',
                    width: 40,
                  ),
                  const Column(
                    children: [
                      CustomText(
                        text: ' 214 th Rank',
                        color: Colors.white,
                      ),
                      CustomText(text: '787 pt',  color: Colors.white,),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetsData.dollar,

                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      CustomText(
                        text: 'Reward Points',
                        color: Colors.white,
                      ),
                      CustomText(text: '1234' , color: Colors.white,),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
