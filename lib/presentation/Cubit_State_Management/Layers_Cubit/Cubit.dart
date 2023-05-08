 import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/State.dart';
import 'package:demo/presentation/Screen/Analytics/Analytics.dart';
import 'package:demo/presentation/Screen/Card/CardScreen.dart';
import 'package:demo/presentation/Screen/Home/Home.dart';
import 'package:demo/presentation/Screen/Settings/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayerCubit extends Cubit<LayerState> {
  LayerCubit() : super(InitLayerState());

  static LayerCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  //Screens Button Nav Bar
  List<Widget> screens = const [Home(), Analytics(), CardScreen(), Settings()];
// method to move between Screens
  void changeIconBottonNav(index) {
    currentIndex = index;
    emit(changeIconBottonNavState());
  }
  // to change colors of Buttons in history screen
  bool ButtonAll=true;
  bool ButtonIncome=false;
  bool ButtonOutcome=false;
  void ChangeColorButtonAll(){
    ButtonAll=true;
    emit(ChangeColorButtonAllState());
  }
  void ChangeColorButtonIncome(){
    ButtonIncome=true;
    emit(ChangeColorButtonIncomeState());
  }
  void ChangeColorButtonOutcome(){
    ButtonOutcome=true;
    emit(ChangeColorButtonOutcomeState());
  }
  bool CheckBox1=false;
  bool CheckBox2=false;
  void CheckBox1Method(){
    CheckBox1=!CheckBox1;
    emit(CheckBox1MethodState());
  }
  void Checkbox2Method(){
    CheckBox2=!CheckBox2;
    emit(Checkbox2MethodState());
  }
}
