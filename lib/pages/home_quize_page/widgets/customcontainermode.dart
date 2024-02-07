import 'package:flutter/material.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomerContainerMode extends StatelessWidget {
  const CustomerContainerMode(
      {super.key,
      required this.modetext,
      required this.modecolor,
      required this.imagestring,
      required this.contaunerheight,
      required this.containerwidth,
      required this.modetext2,
      required this.starttext,
      required this.isremaintext});
  final String modetext;
  final Color modecolor;
  final String imagestring;
  final double contaunerheight;
  final double containerwidth;
  final String modetext2;
  final String starttext;
  final bool isremaintext;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: containerwidth,
        height: contaunerheight,
        decoration: BoxDecoration(
          color: modecolor,
          //  Color(0xffFEB7B7

          //),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: starttext,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
              const SizedBox(
                height: 10,
              ),
              if (isremaintext)
                CustomText(
                  text: modetext,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              if (isremaintext)
                CustomText(
                  text: modetext2,
                  color: Colors.white,
                ),
              Expanded(child: Image.asset(imagestring)),
            ],
          ),
        ));
  }
}
