import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/cubit/Auth_cubit/login_cubit.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/widgets/animated_text_widget.dart';
import 'package:quizapp/pages/Auth_pages/signUp/signup_view.dart';
import 'package:quizapp/pages/home_quize_page/root_homepage.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/custommethods.dart';
import 'package:quizapp/utilites/extentionhelper.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:quizapp/utilites/widgets/custombutton.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';
import 'package:quizapp/utilites/widgets/customtextformfield.dart';

class CustomContainerLogin extends StatelessWidget {
  CustomContainerLogin({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .57,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            const AnimatedTextWidget(),
            const Text(
              'Login to your account,',
              style: Styles.style16,
            ),
            const SizedBox(
              height: 49,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: CustomTextFormField(
                      hintText: 'Email',
                      perfixicon: Icons.email,
                      hinnntcolr: Colors.grey,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      focusnode: field1,
                      onsubmitted: (value) {
                        FocusScope.of(context).requestFocus(field2);
                      },
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
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 60,
                    child: CustomTextFormField(
                      hintText: 'password',
                      perfixicon: Icons.badge,
                      hinnntcolr: Colors.grey,
                      // suffixicon: AuthCubit.get(context).sufficxicp,
                      //   suffixpressed: () {
                      // AuthCubit.get(context).changeSecurePassword();
                      //  },
                      controller: _passwordController,
                      // obscureText: AuthCubit.get(context).isSecurep,
                      keyboardType: TextInputType.visiblePassword,
                      focusnode: field2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  // state is LoginLoadingState
                  //     ? const Center(
                  //         child: CircularProgressIndicator(),
                  //       )
                  //     :

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: CustomButton(
                      buttonText: 'Login',
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Map userdata = {
                            "email": _emailController.text,
                            "password": _passwordController.text,
                          };
                          LoginCubit.get(context)
                              .loginUser(userdata: userdata, context: context);
                        }
                        context.push(RootHomePage());
                        // if (formkey.currentState!.validate()) {}
                      },
                      buttonColor: AppColor.primary,
                      borderRadius: 12,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomText(
                      text: 'Forgot Password?',
                      fontSize: 18,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'You Don’t have an account ? ',
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push(SignUpView());
                        },
                        child: const CustomText(
                          text: 'Sign up',
                          fontSize: 16,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
