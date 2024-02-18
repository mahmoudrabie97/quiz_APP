import 'package:flutter/material.dart';

import '../../../utilites/widgets/custom_appbar_profile.dart';
import 'custom_available_players_main_container.dart';



class CustomAvailablePlayersBody extends StatelessWidget {
  const CustomAvailablePlayersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        CustomAppbar(text: 'Available Players',),
        CustomAvailablePlayersMainContainer(),
      ],
    );
  }
}
