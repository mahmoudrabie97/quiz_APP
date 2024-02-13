import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/custom_half_container.dart';

import 'custom_list_view_ietm_son_quizes.dart';

class CustomMainContainerSonQuizes extends StatelessWidget {
  const CustomMainContainerSonQuizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child:ListView.builder(
        itemCount: 20,
          itemBuilder: (context,index){
        return  const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomListViewIetm(),
        );
      }),
    );
  }
}


