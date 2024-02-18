import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomPaymentTransferRow extends StatelessWidget {
  const CustomPaymentTransferRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              CircleAvatar(
                //   backgroundColor: Colors.grey,
                child: Icon(Icons.transform_outlined, color: Colors.black),
              ),
              CustomText(
                text: 'Transfer',
                color: AppColor.primary,
              )
            ],
          ),
          SizedBox(
            width: 39,
          ),
          Column(
            children: [
              CircleAvatar(
                child: Icon(Icons.payment_outlined, color: Colors.black),
              ),
              CustomText(
                text: 'PayMent',
                color: AppColor.primary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
