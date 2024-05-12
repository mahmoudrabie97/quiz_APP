

import 'package:flutter/material.dart';

import '../../../utilites/styles.dart';

class CustomSmallContainerRow extends StatelessWidget {
  const CustomSmallContainerRow({Key? key, required this.number, required this.text}) : super(key: key);
  final String number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          children: [
            Text(number, style: Styles.style12,),
            Text(text,style: Styles.style11,),
          ],
        ),
      ),
    );
  }
}