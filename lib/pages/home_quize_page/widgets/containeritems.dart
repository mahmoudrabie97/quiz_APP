import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Welcome Back ,',style: Styles.style20.copyWith(fontSize: 13),),
              Text('Enas Omar',style: Styles.style20),
            ],
          ),
          Image.asset(AssetsData.person,width: 55,height: 55,),

        ],
      ),
    );
  }
}
