import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/widgets/custom_appbar_profile.dart';
import 'custom_main_profile_container.dart';
import 'custom_row_settings.dart';

class CustomProfileBody extends StatelessWidget {
  const CustomProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: const [
        Column(
          children: [
            CustomAppbarProfile(
              text: 'My Profile',
            ),
            CustomMainProfileContainer(),
          ],
        ),
      ],
    ));
  }
}
