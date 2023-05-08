import 'package:bloc/bloc.dart';
import 'package:demo/cubit/authCubit/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../dio_helper/DioHelper.dart';
import '../../dio_helper/end_points.dart';
import '../../models/authModel/auth_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  bool isPass=true;
  IconData suffix =Icons.visibility_off_outlined;

  void changePass (){
    isPass = !isPass;
    suffix =isPass? Icons.visibility_off_outlined:Icons.visibility_outlined;
    emit(ChangePassState());
  }


  AuthModel? authModel;

  void userLogin({
    required String ssid,
    required String password,
  }){
    emit(LoadingState());
    DioHelper.postData(
      url: LOGIN,
      data: {
        'ssid':ssid,
        'password':password,
      },).then((value) {
      print(value.data);
print("suc");
      authModel=AuthModel.fromJson(value.data);
      emit(SuccessState(authModel!));

    }).catchError((error){


      emit(ErrorState(error.toString()));
    });
  }

}
