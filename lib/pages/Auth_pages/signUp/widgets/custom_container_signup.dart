import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/cubit/Auth_cubit/register_cubit.dart';
import 'package:quizapp/cubit/Auth_cubit/register_states.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/login_page.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/styles.dart';


import '../../../../utilites/appcolors.dart';
import '../../../../utilites/widgets/custombutton.dart';
import '../../../../utilites/widgets/customtextformfield.dart';
import 'custom_row_signup.dart';

class CustomContainerSignUp extends StatelessWidget {
  CustomContainerSignUp({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberNController = TextEditingController();
  final TextEditingController _passwordconfirmationController =
      TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();
  final FocusNode field4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (BuildContext context, state) {
          if(state is RegisterSuccessState)
            {
              context.push(LoginView());
            }
    },
        builder: (BuildContext context,  state) {
      return Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const Text(
                  'Sign Up',
                  style: Styles.style24,
                ),
                Text(
                  ' create a new account',
                  style: Styles.style16.copyWith(color: Color(0xff9098B1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  controller: _nameController,
                  hintText: 'Full Name',
                  perfixicon: Icons.person_2_outlined,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please re enter your name';
                    }
                    // else if (_passwordController.text !=
                    //     _passwordconfirmationController.text) {
                    //   return 'two passwords not agree';
                    // }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: _emailController,
                  hintText: 'Email',
                  perfixicon: Icons.email_outlined,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please re enter your Email';
                    }
                    // else if (_passwordController.text !=
                    //     _passwordconfirmationController.text) {
                    //   return 'two passwords not agree';
                    // }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: _passwordController,
                  hintText: 'Password',
                  perfixicon: Icons.lock_outline_rounded,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please re enter your password';
                    }
                    // else if (_passwordController.text !=
                    //     _passwordconfirmationController.text) {
                    //   return 'two passwords not agree';
                    // }

                    return null;
                  },
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // CustomTextFormField(
                //   controller: _passwordconfirmationController,
                //   hintText: 'Confirm Password',
                //   perfixicon: Icons.lock_outline_rounded,
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'please re enter your password';
                //     } else if (_passwordController.text !=
                //         _passwordconfirmationController.text) {
                //       return 'two passwords not agree';
                //     }
                //
                //     return null;
                //   },
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                CustomTextFormField(
                  controller: _phoneNumberNController,
                  hintText: 'phone number',
                  perfixicon: Icons.lock_outline_rounded,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please re enter your phone number';
                    }
                    // else if (_passwordController.text !=
                    //     _passwordconfirmationController.text) {
                    //   return 'two passwords not agree';
                    // }

                    return null;
                  },
                ),
                state is RegisterLoadingState
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    :
                CustomButton(
                  buttonText: 'Sign up ',
                  onPressed: () {
                    // context.push(LoginView());
                    if (formkey.currentState!.validate()) {
            RegisterCubit.get(context).registerUser(
              userdata: {
                "name": _nameController.text,
                "username": _nameController.text,
                "email": _emailController.text,
                "password": _passwordController.text,
                "phoneNumber": _phoneNumberNController.text,
              }, context: context,
            );
                    }

                  },
                  txtColor: AppColor.whiteColor,
                  buttonColor: AppColor.primary,
                ),
                const SizedBox(
                  height: 10,
                ),


                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: CustomRowSignUp(),
                ),
                // CustomTextFormField(hintText: 'Full Name',perfixicon: Icons.person_2_outlined),
              ],
            ),
          ),
        ),
      );
    });
  }
}
