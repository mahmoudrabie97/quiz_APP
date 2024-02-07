import 'package:flutter/material.dart';
import 'package:quizapp/utilites/custommethods.dart';
import 'package:quizapp/utilites/widgets/customtextformfield.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
    required TextEditingController emailController,
    required this.field1,
  }) : _emailController = emailController;

  final TextEditingController _emailController;
  final FocusNode field1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomTextFormField(
          hintText: 'search Quiz Categories',
          perfixicon: Icons.search,
          hinnntcolr: Colors.grey,
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          focusnode: field1,
          onsubmitted: (value) {},
          validator: (value) {
            if (value!.isEmpty) {
              return 'please enter your email';
            } else if (!isEmailValid(value)) {
              return 'Invalid email format';
            }
            return null;
          },
        ),
      ),
    );
  }
}
