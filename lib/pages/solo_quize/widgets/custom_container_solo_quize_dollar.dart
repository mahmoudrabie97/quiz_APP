import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';


class CustomContainerSoloQuizeDollar extends StatelessWidget {
  const CustomContainerSoloQuizeDollar({Key? key, required this.text, required this.width}) : super(key: key);
final String text;
final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 28,
      decoration: BoxDecoration(
        color:AppColor.lightGreenColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4,right: 6),
        child: Row(
          children: [
            // SvgPicture.asset(AssetsData.dollar,width:10 ,height: 10,color: Colors.amber,),
            Image.asset(AssetsData.dollar),
            Spacer(),
            Text(text,style: Styles.style26.copyWith(fontSize: 14),),

          ],
        ),
      ),
    );
  }
}