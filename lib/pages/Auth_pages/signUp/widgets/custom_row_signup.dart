import 'package:flutter/material.dart';

import '../../../../utilites/appcolors.dart';
import '../../../../utilites/styles.dart';



class CustomRowSignUp extends StatelessWidget {
  const CustomRowSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Already have account?',
          style: Styles.style18,
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            'Login',
            style: Styles.style18.copyWith(color: AppColor.primary),
          ),
        ),
      ],
    );
  }
}