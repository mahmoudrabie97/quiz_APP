import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';
import '../../../utilites/widgets/custombutton.dart';
import 'custom_squar_container.dart';
class CustomVerificationMainContainer extends StatelessWidget {
  const CustomVerificationMainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 440,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const Text(
            'Sign Up',
            style: Styles.style30,
          ),
          const Text(
            'Create a new account',
            style: Styles.style17,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomButton(
              buttonText: 'By Phone',
              onPressed: () {},
              buttonColor: AppColor.primary,
              borderRadius: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomButton(
              buttonText: 'By Email',
              onPressed: () {},
              buttonColor: AppColor.primary,
              borderRadius: 30,
            ),
          ),
          const Text(
            'Verification Code',
            style: Styles.style24,
          ),
          const Text(
            'We have sent the verification ',
            style: Styles.style17,
          ),
          const Text(
            'code to your Son account',
            style: Styles.style17,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0,right: 12,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSquarContainer(text: '8'),
                CustomSquarContainer(text: '5'),
                CustomSquarContainer(text: '2'),
                CustomSquarContainer(text: ''),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65,right: 65,top: 19),
            child: CustomButton(
              buttonText: 'Send',
              onPressed: () {},
              buttonColor: AppColor.primary,
              borderRadius: 30,
            ),
          ),
        ],
      ),
    );
  }
}