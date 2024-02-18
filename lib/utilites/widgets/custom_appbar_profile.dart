import 'package:flutter/material.dart';

import '../appcolors.dart';
import '../styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
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
