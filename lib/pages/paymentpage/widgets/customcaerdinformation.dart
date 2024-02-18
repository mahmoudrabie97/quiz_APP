import 'package:flutter/material.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/custombutton.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

import '../../../../utilites/widgets/customtextformfield.dart';

class CustomCrdInformation extends StatelessWidget {
  CustomCrdInformation({Key? key}) : super(key: key);

  final TextEditingController _cardnumberController = TextEditingController();
  final TextEditingController _expiredcontroller = TextEditingController();
  final TextEditingController _cardholdername = TextEditingController();
  final TextEditingController _passwordconfirmationController =
      TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Card number',
              //style: Styles.style14,
            ),

            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              controller: _cardnumberController,
              hintText: '0000 0000 0000 0000',
              suffixicon: Icons.qr_code_scanner_outlined,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please  enter your card number';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(text: 'Cardholder Name'),
            const SizedBox(
              height: 10,
            ),

            CustomTextFormField(
              controller: _cardholdername,
              hintText: 'ex. Jonathan Paul Ive',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please  enter the cardholder name';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Expiry date',
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'CVV / CVC',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.question_mark),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: _expiredcontroller,
                    hintText: 'MM/YYYY',
                    perfixicon: Icons.lock_outline_rounded,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please re enter your expired date';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: CustomTextFormField(
                    controller: _passwordconfirmationController,
                    hintText: '3-4 digits',
                    perfixicon: Icons.lock_outline_rounded,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please re enter your password';
                      }

                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            CustomButton(buttonText: 'Pay now', onPressed: () {}),

            // CustomTextFormField(hintText: 'Full Name',perfixicon: Icons.person_2_outlined),
          ],
        ),
      ),
    );
  }
}
