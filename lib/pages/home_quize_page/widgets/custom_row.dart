

import 'package:flutter/material.dart';

import '../home_quize_page.dart';
import 'custom_small_container_row.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      const Padding(
        padding: EdgeInsets.only(left: 50.0),
        child: Row(

          children: [


            CustomSmallContainerRow(number: '360', text: 'DAYS',),

            CustomSmallContainerRow(number: '360', text: 'DAYS',),

            CustomSmallContainerRow(number: '360', text: 'DAYS',),

            CustomSmallContainerRow(number: '360', text: 'DAYS',),

          ],
        ),
      );
  }
}