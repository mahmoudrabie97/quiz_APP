import 'package:flutter/material.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class SummaryListItems extends StatelessWidget {
  const SummaryListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('1 St'),
              SizedBox(width: 14),
              CircleAvatar(
                  backgroundColor: Color(0xffBFF0C8),
                  child: Image.asset('assets/svg/33.png', width: 50)),
            ],
          ),
          Column(
            children: [
              CustomText(text: 'Enas Omar ,'),
              Row(
                children: [
                  CustomText(text: 'Won', color: Colors.green),
                  Image.asset('assets/svg/dollar 1.png'),
                  CustomText(
                    text: '50',
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
          CustomText(text: '80%')
        ],
      ),
    );
  }
}
