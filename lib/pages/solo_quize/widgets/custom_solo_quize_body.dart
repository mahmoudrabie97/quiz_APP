import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import 'custom_container_solo_body.dart';
import 'custom_container_solo_quize_dollar.dart';
import 'list_view_solo_ietm.dart';

class CustomSoloQuizeBody extends StatelessWidget {
  const CustomSoloQuizeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(top: 10,right: 8,left: 8),
          child: ListViewSoloQuizIetm(),
        );
      },
    );
  }
}


