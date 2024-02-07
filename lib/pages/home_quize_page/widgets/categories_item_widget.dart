import 'package:flutter/material.dart';
import 'package:quizapp/pages/home_quize_page/widgets/customcontainermode.dart';

class CustomCategriesItem extends StatelessWidget {
  const CustomCategriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerContainerMode(
            modecolor: const Color(0xffC2B7FF),
            starttext: 'Start',
            modetext2: '',
            modetext: 'RandomQuiz',
            imagestring: 'assets/svg/33.png',
            contaunerheight: MediaQuery.of(context).size.height * .38,
            containerwidth: 240,
            isremaintext: true,
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Column(
                children: [
                  CustomerContainerMode(
                    modecolor: const Color(0xffFFCE85),
                    starttext: 'Science',
                    modetext2: '',
                    modetext: '',
                    imagestring: 'assets/svg/test-tube.png',
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 120,
                    isremaintext: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomerContainerMode(
                    modecolor: const Color(0xff96DEFE),
                    starttext: 'Geography',
                    modetext2: '',
                    modetext: '',
                    imagestring: 'assets/svg/table-globe.png',
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 120,
                    isremaintext: false,
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  CustomerContainerMode(
                    modecolor: const Color(0xff6AC38D),
                    starttext: 'Sports',
                    modetext2: '',
                    modetext: '',
                    imagestring: 'assets/svg/sports.png',
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 120,
                    isremaintext: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomerContainerMode(
                    modecolor: const Color(0xffFEB3F3),
                    starttext: 'English',
                    modetext2: '',
                    modetext: '',
                    imagestring: 'assets/svg/education-blocks.png',
                    contaunerheight: MediaQuery.of(context).size.height * .18,
                    containerwidth: 120,
                    isremaintext: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
