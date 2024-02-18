import 'package:flutter/material.dart';
import 'package:quizapp/pages/my_wallet/widgets/custom_balancecontainer.dart';
import 'package:quizapp/pages/my_wallet/widgets/custom_payement_transfer_row.dart';
import 'package:quizapp/pages/my_wallet/widgets/customlastransactionrow.dart';

import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/widgets/custom_main_appbar.dart';

class CustomWalletBody extends StatelessWidget {
  const CustomWalletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        const CustomMainAppbar(text: 'My Wallet'),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            height: height * .7,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomBalancedContainer(),
                CustomPaymentTransferRow(),
                CustomLastTransactionRow(),
              ],
            ),
          ),
        ),

        //SizedBox(height: MediaQuery.of(context).size.height * .1,),
      ],
    );
  }
}
