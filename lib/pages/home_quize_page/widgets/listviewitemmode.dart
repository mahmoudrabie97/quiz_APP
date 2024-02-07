import 'package:flutter/material.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customcontainermode.dart';
import 'package:quizapp/pages/solo_quize/solo_quize_view.dart';
import 'package:quizapp/utilites/extentionhelper.dart';

class Listvuewitemmode extends StatelessWidget {
  const Listvuewitemmode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.push(SoloQuizeView());
          },
          child: CustomerContainerMode(
            modecolor: const Color(0xffFEB7B7),
            starttext: 'Start',
            modetext2: 'Mode',
            modetext: 'Solo',
            imagestring: 'assets/svg/33.png',
            contaunerheight: MediaQuery.of(context).size.height * .28,
            containerwidth: 120,
            isremaintext: true,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        CustomerContainerMode(
          modecolor: const Color(0xff96DEFE),
          starttext: 'Start',
          modetext2: 'Mode',
          modetext: 'Multiplayer',
          imagestring: 'assets/svg/33.png',
          contaunerheight: MediaQuery.of(context).size.height * .28,
          containerwidth: 120,
          isremaintext: true,
        ),
        const SizedBox(
          width: 20,
        ),
        CustomerContainerMode(
          modecolor: const Color(0xff88E68B),
          starttext: 'Start',
          modetext: ' 1 Vs. 1',
          imagestring: 'assets/svg/33.png',
          contaunerheight: MediaQuery.of(context).size.height * .28,
          containerwidth: 120,
          modetext2: 'Mode',
          isremaintext: true,
        ),
      ],
    );
  }
}
