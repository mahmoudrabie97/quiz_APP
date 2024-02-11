import 'package:flutter/material.dart';
import 'package:quizapp/pages/edit_profile/widgets/custom_edit_profile.dart';



class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   body: CustomEditProfileBody(),
    );
  }
}
