import 'package:flutter/material.dart';

import '../../../../utilites/styles.dart';

class CustomOnBoardingSmallContainer extends StatelessWidget {
  const CustomOnBoardingSmallContainer(
      {Key? key, required this.color, required this.image, required this.text})
      : super(key: key);
  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * .15,
      width: width * .8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Row(
          children: [
            Image.asset(image),
            Text(
              text,
              style: Styles.style20,
            )
          ],
        ),
      ),
    );
  }
}
