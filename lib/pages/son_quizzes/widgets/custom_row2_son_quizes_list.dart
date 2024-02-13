import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';



class CustomRow2SonQuizezList extends StatelessWidget {
  const CustomRow2SonQuizezList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 20),
      child: Row(
        children: [
          const Text(
            'Time',
            style: Styles.style17,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            '50:00 M',
            style: Styles.style19.copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 6,
          ),
          Image.asset(AssetsData.deadline),
          const Spacer(),
          Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primary,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.whiteColor,

                ),
              ))
        ],
      ),
    );
  }
}




