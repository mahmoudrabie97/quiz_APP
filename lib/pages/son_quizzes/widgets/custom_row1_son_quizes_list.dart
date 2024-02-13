import 'package:flutter/material.dart';

import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';

class CustomRow1SonQuizezList extends StatelessWidget {
  const CustomRow1SonQuizezList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 12),
          child: Image.asset(AssetsData.accept),
        ),
        Text('20 Questions',style: Styles.style19.copyWith(color: Colors.black),),
      ],
    );
  }
}