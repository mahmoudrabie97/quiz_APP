import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import 'custom_small_button_friend_request.dart';



class CustomFriendsRequestListViewIetm extends StatelessWidget {
  const CustomFriendsRequestListViewIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [

              Image.asset(AssetsData.person),
              SizedBox(width: 10,),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enas Omar ',style: Styles.style15,),
                  Text('Enas@gmail.com  ',style: Styles.style14,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomSmallButtonFriendRequest(color: AppColor.primary, text: 'Accept',),
                     SizedBox(width: 30,),
                      CustomSmallButtonFriendRequest(color: AppColor.red, text: 'Decline',),
                    ],
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
