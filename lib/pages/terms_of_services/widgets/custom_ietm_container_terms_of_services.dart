import 'package:flutter/material.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';

class CustomIetmContainerTermsOfServices extends StatelessWidget {
  const CustomIetmContainerTermsOfServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 30,right: 20),
      child: ListView(
        children:  [
          Text(
            'AGREEMENT',
            style: Styles.style400,
          ),
          Text(
            'Terms of Service',
            style: Styles.style30,
          ),
          Text(
            'Last updated on 5/12/2022',
            style: Styles.style15,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Clause 1',
            style: Styles.style19,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
            style: Styles.style15,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Clause 2',
            style: Styles.style19,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat s',
            style: Styles.style15,
          ),
          SizedBox(height: 50,),
          CustomButton(
            buttonText: 'Accept & Continue  ',
            onPressed: () {


            },
            txtColor: AppColor.whiteColor,
            buttonColor: AppColor.primary,
          ),
//Last updated on 5/12/2022
        ],
      ),
    );
  }
}
