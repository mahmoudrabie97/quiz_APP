import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';

class CustomAppbarProfile extends StatelessWidget {
  const CustomAppbarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteColor,
            ),
          ),
          const SizedBox(width: 80,),

          const Text('My Profile',style: Styles.style28,),
        ],
      ),
    );
  }
}
