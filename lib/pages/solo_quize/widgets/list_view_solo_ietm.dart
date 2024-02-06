import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import 'custom_container_solo_body.dart';
import 'custom_container_solo_quize_dollar.dart';
class ListViewSoloQuizIetm extends StatelessWidget {
  const ListViewSoloQuizIetm({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerSoloBody(
          childRow: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AssetsData.dollar),
                Text('20',style: Styles.style15),
                const Text(
                  'Reward ',
                  style: Styles.style17,
                ),
                const Text(
                  'Entry',
                  style: Styles.style17,
                ),
                const CustomContainerSoloQuizeDollar(
                  text: '05',
                  width: 60,
                ),
              ],
            ),
          ),
          color: AppColor.whiteColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),
         CustomContainerSoloBody(
          childRow: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
                Image.asset(AssetsData.accept),
                Text('10/10 Correct Win',style: Styles.style15,),
                Spacer(),
                Image.asset(AssetsData.win),
                Text('75%',style: Styles.style15,),
                //Text('10/10 Correct Win',style: Styles.style19,),
              ],
            ),
          ),
          color: AppColor.lightGreyColor,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        )
      ],
    );
  }
}