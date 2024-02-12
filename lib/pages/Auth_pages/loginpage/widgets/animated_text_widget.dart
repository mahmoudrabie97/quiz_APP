import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AnimatedTextKit(repeatForever: true, animatedTexts: [
        ColorizeAnimatedText('Welcome Back',
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            colors: [
              Colors.black,
              AppColor.primary,
              Colors.black,
              AppColor.lightGreenColor,
              Colors.black,
            ]),
      ]),
    );
  }
}
