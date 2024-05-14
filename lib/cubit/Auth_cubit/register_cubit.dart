

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/cubit/Auth_cubit/register_states.dart';
import 'package:quizapp/network/endpoints.dart';

import '../../network/api.dart';
import '../../utilites/constants.dart';
import '../../utilites/widgets/showdialog.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);


  void registerUser({
    required Map userdata,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(RegisterLoadingState());
    CallApi.postData(
      data: userdata,
      baseUrl: ApiEndPoint.baseUrl,
      apiUrl: ApiEndPoint.registerUrl,
      headers: headers,
      context: context,
    ).then((value) {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        print(responseBody);
        emit(RegisterSuccessState());
      } else if (value.statusCode == 500) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['success']);
        ShowMyDialog.showMsg(context, responseBody['success']);
        emit(RegisterFailureState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(RegisterFailureState());
    });
  }
}