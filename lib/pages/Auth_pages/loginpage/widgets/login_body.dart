import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/cubit/Auth_cubit/login_cubit.dart';
import 'package:quizapp/cubit/Auth_cubit/login_states.dart';
import 'package:quizapp/pages/Auth_pages/loginpage/widgets/custom_container_login.dart';

import '../../../../utilites/assets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(AssetsData.login, width: 200),
                CustomContainerLogin(),
              ],
            ),
          ],
        );
      },
    );
  }
}
