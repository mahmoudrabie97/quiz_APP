import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),

          color: AppColor.whiteColor,
        ),
        child: Column(
          children: [
            CustomRowWords(),
          ],
        ),

      ),
    );
  }

}


class CustomRowWords extends StatelessWidget {
  const CustomRowWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Standings',style: Styles.style17,),
          Text('Summary',style: Styles.style17,),
          Text('Friends',style: Styles.style17,),
        ],
      ),
    );
  }
}
