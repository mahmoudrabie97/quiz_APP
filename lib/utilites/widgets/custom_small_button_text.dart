import 'package:flutter/material.dart';
import 'package:quizapp/utilites/styles.dart';

class CustomSmallButtonText extends StatelessWidget {
  const CustomSmallButtonText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(onPressed: (){}, child: Text(text,style: Styles.style17,), );
  }
}
