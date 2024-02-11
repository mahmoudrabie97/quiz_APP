import 'package:flutter/material.dart';

import '../appcolors.dart';
import '../styles.dart';

class CustomAppbarProfile extends StatelessWidget {
  const CustomAppbarProfile({Key? key, required this.text}) : super(key: key);

  final String text;

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

           Text(text,style: Styles.style28,),
        ],
      ),
    );
  }
}
