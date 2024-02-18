import 'package:flutter/material.dart';
import 'package:quizapp/utilites/styles.dart';

class CustomPaymentCheckContainer extends StatelessWidget {
  const CustomPaymentCheckContainer({Key? key, required this.image, required this.text, required this.widgetLeading}) : super(key: key);
  final String image;
  final String text;
  final Widget widgetLeading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
            border: Border.all(color:  Color(0xFFD6D6D6),width: 1)

        ),
        child: ListTile(
          title:  Text(text,style: Styles.style19,),
          leading: Image.asset(image),
          trailing: widgetLeading,

          ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10,right: 10),
            //   child: Image.asset(image),
            // ),



        ),

    );
  }
}
