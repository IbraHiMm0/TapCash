 import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/State.dart';
import 'package:demo/presentation/Screen/Analytics/Analytics.dart';
import 'package:demo/presentation/Screen/Card/CardScreen.dart';
import 'package:demo/presentation/Screen/Home/Home.dart';
import 'package:demo/presentation/Screen/Settings/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardCubit extends Cubit<CardState> {
  CardCubit() : super(InitCardState());

  static CardCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  //Screens Button Nav Bar
  List<Widget> screens = const [Home(), Analytics(), CardScreen(), Settings()];
// method to move between Screens
  void changeIconBottonNav(index) {
    currentIndex = index;
    emit(changeIconBottonNavState());
  }
}
