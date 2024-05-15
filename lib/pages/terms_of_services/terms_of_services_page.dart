import 'package:flutter/material.dart';
import 'package:quizapp/pages/terms_of_services/widgets/custom_body_terms_services.dart';
import 'package:quizapp/utilites/appcolors.dart';


class TermsOfServicesPage extends StatelessWidget {
  const TermsOfServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
backgroundColor: AppColor.primary,
      ),
      body: CustomBodyTermsOfServices(),
    );
  }
}
