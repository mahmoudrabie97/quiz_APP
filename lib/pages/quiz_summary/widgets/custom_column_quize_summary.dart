import 'package:flutter/material.dart';

import '../../../utilites/styles.dart';


class CustomColumnQuizeSummary extends StatelessWidget {
  const CustomColumnQuizeSummary({Key? key, required this.image, required this.text}) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Image.asset(image),
          Text('08',style: Styles.style20.copyWith(color: Colors.black),)
        ],),
        Text(text,style: Styles.style17,),
      ],
    );
  }
}