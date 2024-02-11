import 'package:flutter/material.dart';
import 'package:quizapp/pages/my_profile/widgets/custom_profile_body.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomProfileBody(),
    );
  }
}
