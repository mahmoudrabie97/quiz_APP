import 'package:flutter/material.dart';
import 'package:quizapp/pages/add_friends/widgets/custom_add_friends_body.dart';


class AddFriendsView extends StatelessWidget {
  const AddFriendsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAddFriendsBody(),
    );
  }
}
