


import 'package:flutter/material.dart';
import 'package:quizapp/pages/friend_reqeuest/widgets/custom_friend_request_body.dart';

class FriendRequestView extends StatelessWidget {
  const FriendRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomFriendRequestBody(),
    );
  }
}
