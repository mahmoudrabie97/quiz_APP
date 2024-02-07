import 'package:flutter/material.dart';

import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';


class CustomRow2Container extends StatelessWidget {
  const CustomRow2Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.accept),
        Text('10/10 Correct Win',style: Styles.style15,),
        Spacer(),
        Image.asset(AssetsData.win),
        Text('75%',style: Styles.style15,),
        //Text('10/10 Correct Win',style: Styles.style19,),
      ],
    );
  }
}
