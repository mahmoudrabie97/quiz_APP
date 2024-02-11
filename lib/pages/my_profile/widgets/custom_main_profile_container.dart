import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';

import '../../../utilites/assets.dart';
import 'custom_row_main_information.dart';
import 'custom_row_settings.dart';


class CustomMainProfileContainer extends StatelessWidget {
  const CustomMainProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Container(
        height: MediaQuery.of(context).size.height *.83,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20),),


        ),
        child: const Column(
          children: [
            CustomRowMainInformation(),
            SizedBox(
              height: 40,
            ),
            CustomRowSettings(image: AssetsData.person, text: 'My Profile',),
            CustomRowSettings(image: AssetsData.win, text: 'Rewards',),
            CustomRowSettings(image: AssetsData.accept, text: 'Notifications',),
            CustomRowSettings(image: AssetsData.person, text: 'All Quizzes',),
            CustomRowSettings(image: AssetsData.person, text: 'Settings',),
            CustomRowSettings(image: AssetsData.person, text: 'About App',),
            CustomRowSettings(image: AssetsData.person, text: 'Logout',),
          ],
        ),
      ),
    );
  }
}
