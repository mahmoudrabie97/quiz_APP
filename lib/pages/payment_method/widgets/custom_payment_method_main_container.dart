import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';

import '../../../utilites/widgets/custombutton.dart';
import 'custom_payment_check_container.dart';

enum SingingCharacter { visa, palpal,appel }
class CustomPaymentMethodMainContainer extends StatefulWidget {
  const CustomPaymentMethodMainContainer({Key? key}) : super(key: key);

  @override
  State<CustomPaymentMethodMainContainer> createState() => _CustomPaymentMethodMainContainerState();
}

class _CustomPaymentMethodMainContainerState extends State<CustomPaymentMethodMainContainer> {


  SingingCharacter? _character = SingingCharacter.visa;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
      child: Container(
        width: double.infinity,
        height: MediaQuery
            .of(context)
            .size
            .height * .8,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12),

        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select Payment Method', style: Styles.style19,),
               CustomPaymentCheckContainer(image: AssetsData.visa,
                text: 'Credit Card',
                widgetLeading:Radio<SingingCharacter>(
                value: SingingCharacter.visa,
                  focusColor: AppColor.primary,
                  activeColor:AppColor.primary ,
                  hoverColor: AppColor.primary,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),),
               CustomPaymentCheckContainer(
                image: AssetsData.payPal, text: 'PayPal', widgetLeading:Radio<SingingCharacter>(
                 value: SingingCharacter.palpal,
                 focusColor: AppColor.primary,
                 activeColor:AppColor.primary ,
                 hoverColor: AppColor.primary,
                 groupValue: _character,
                 onChanged: (SingingCharacter? value) {
                   setState(() {
                     _character = value;
                   });
                 },
               ),),
               CustomPaymentCheckContainer(
                image: AssetsData.apple, text: 'Apple Pay', widgetLeading:Radio<SingingCharacter>(
                 value: SingingCharacter.appel,
                 focusColor: AppColor.primary,
                 activeColor:AppColor.primary ,
                 hoverColor: AppColor.primary,
                 groupValue: _character,
                 onChanged: (SingingCharacter? value) {
                   setState(() {
                     _character = value;
                   });
                 },
               ),),
              const Spacer(),
              CustomButton(
                buttonText: 'Add',
                onPressed: () {
                  // if (formkey.currentState!.validate()) {}
                },
                buttonColor: AppColor.primary,
                borderRadius: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
