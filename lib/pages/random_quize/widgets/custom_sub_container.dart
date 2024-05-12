import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';

class CustomSubContainerQuize extends StatelessWidget {
  const CustomSubContainerQuize(
      {Key? key, required this.color, required this.image, required this.text})
      : super(key: key);
  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Image.asset(image),
               SizedBox(width: 15,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('START',style: Styles.style10,),
                  Text(text,style: Styles.style20,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
