
import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';

import 'custom_ietm_container_terms_of_services.dart';


class CustomBodyTermsOfServices extends StatelessWidget {
  const CustomBodyTermsOfServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 8),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .89
        ,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),

        ),
        child: const CustomIetmContainerTermsOfServices(),
      ),
    );
  }
}
