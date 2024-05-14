import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/cubit/Auth_cubit/login_states.dart';
import 'package:quizapp/network/api.dart';
import 'package:quizapp/network/login_endpoint.dart';
import 'package:quizapp/utilites/widgets/showdialog.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  IconData sufficxicp = Icons.visibility_off;
  IconData sufficxicpc = Icons.visibility_off;
  bool isSecurep = true;
  bool isSecurepc = true;
  bool isChecked = false;

  void checkBox(bool? val) {
    isChecked = val!;
    emit(CheckBoxSuccessState());
  }

  void changeSecurePassword() {
    if (isSecurep) {
      sufficxicp = Icons.visibility_off;
      isSecurep = false;
    } else {
      sufficxicp = Icons.remove_red_eye_outlined;
      isSecurep = true;
    }
    emit(ChangesecurepasswordState());
  }

  void loginUser({
    required Map userdata,
    required BuildContext context,
  }) {
    emit(LoginLoadingState());
    CallApi.postData(
        data: userdata,
        baseUrl: baseurl,
        apiUrl: loginurl,
        context: context,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }).then((value) {
      if (value!.statusCode == 200) {
        //debugPrint(value.body);
        final responseBody = json.decode(value.body);
        print(responseBody);

        //AppConstant.token = userModel!.accessToken;

        // print('tokkkkkkkkkkkkkkkkk${AppConstant.token}');

        // AppConstant.token = userModel!.accessToken;
        // debugPrint('token=${AppConstant.token}');
        // debugPrint('usrId= ${userModel!.userId}');

        emit(LoginSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['error_description']);
        ShowMyDialog.showMsg(
          context,
          responseBody['message'],
        );

        emit(LoginErrorEmailorpasswordState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(
          context,
          'internal server error',
        );
        emit(LoginErrorState());
      } else {
        ShowMyDialog.showMsg(
          context,
          'unkown error, please try later',
        );
        emit(LoginErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(LoginErrorState());
    });
  }
}
