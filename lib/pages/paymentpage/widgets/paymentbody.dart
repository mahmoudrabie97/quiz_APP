import 'package:flutter/material.dart';
import 'package:quizapp/pages/paymentpage/widgets/customcaerdinformation.dart';

import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/custom_appbar_profile.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        const CustomAppbar(text: 'PaymentMethods', icon: Icons.home),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: height * .9,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: Image.asset('assets/images/DESIGN 5.png'),
                    ),
                    CustomCrdInformation(),
                  ],
                ),
              ],
            ),
          ),
        ),

        //SizedBox(height: MediaQuery.of(context).size.height * .1,),
      ],
    );
  }
}
