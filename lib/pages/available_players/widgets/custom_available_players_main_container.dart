import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';

import '../../../utilites/widgets/customtextformfield.dart';
import 'custom_available_players_list_view_ietm.dart';


class CustomAvailablePlayersMainContainer extends StatelessWidget {
  CustomAvailablePlayersMainContainer({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        width: double.infinity,
        height: MediaQuery
            .of(context)
            .size
            .height * .87,
        decoration: BoxDecoration(
          color: AppColor.grey300,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              CustomTextFormField(

                prefixColor: AppColor.greyColor,
                fillColor: AppColor.lightGreyColor,
                hintText: 'Search a Player',
                perfixicon: Icons.search,
                hinnntcolr: AppColor.grey300,
                focusColor: AppColor.lightGreyColor,

                controller: _searchController,

                keyboardType: TextInputType.visiblePassword,

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  }
                  return null;
                },
              ),
              Expanded(
                child: ListView.builder(
                 
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                  return CustomAddFriendsListViewIetm();
                },
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

