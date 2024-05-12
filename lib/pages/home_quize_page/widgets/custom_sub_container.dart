

import 'package:flutter/material.dart';

import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import '../home_quize_page.dart';
import 'custom_row.dart';

class CustomSubContainer extends StatelessWidget {
  const CustomSubContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .3,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius:BorderRadius.circular(20),


        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300.0),
              child: Image.asset(AssetsData.imageRight),
            ),
            const Text('Take part in challenges with ',style: Styles.style20,),
            const Text('friends or other players   ',style: Styles.style20,),
            const CustomRow(),
            Padding(
              padding: const EdgeInsets.only(right: 330.0),
              child: Image.asset(AssetsData.imageLeft),
            ),
          ],
        ),
      ),
    );
  }
}