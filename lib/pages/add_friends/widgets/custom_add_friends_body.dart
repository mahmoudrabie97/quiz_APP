import 'package:flutter/material.dart';
import 'package:quizapp/pages/add_friends/widgets/custom_add_friends_main_container.dart';

import '../../../utilites/widgets/custom_appbar_profile.dart';
import '../../available_players/widgets/custom_available_players_main_container.dart';


class CustomAddFriendsBody extends StatelessWidget {
  const CustomAddFriendsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppbar(text: 'Add Friends', icon: Icons.arrow_back_ios,
          onPressed: () {
            Navigator.pop(context);
          },),
        CustomAddFriendsMainContainer(),
      ],
    );
  }
}
