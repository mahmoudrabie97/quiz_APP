import 'package:flutter/material.dart';

import '../../../utilites/widgets/custom_appbar_profile.dart';
import 'custom_friend_request_main_container.dart';

class CustomFriendRequestBody extends StatelessWidget {
  const CustomFriendRequestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(text: 'Friend Requests', icon: Icons.arrow_back_ios,onPressed: (){
          Navigator.pop(context);
        },),
        CustomFriendRequestMainContainer(),
      ],
    );
  }
}
