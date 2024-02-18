import 'package:flutter/material.dart';
import 'package:quizapp/utilites/widgets/custom_appbar_profile.dart';

import 'custom_main_container_edit_profile.dart';

class CustomEditProfileBody extends StatelessWidget {
  const CustomEditProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbar(
            text: 'Edit Profile',
            icon: Icons.arrow_back_ios,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CustomMainContainerEditProfle(),
        ],
      ),
    );
  }
}
