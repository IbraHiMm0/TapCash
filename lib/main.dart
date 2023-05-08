
import 'package:demo/presentation/AddNewChild/AddNewChild.dart';
import 'package:demo/presentation/History/History.dart';
import 'package:demo/presentation/Notifications/Notifications.dart';
import 'package:demo/presentation/Screen/Add_Monay/AddMonay.dart';
import 'package:demo/presentation/Screen/Add_your_Son_is_Information/Add_Imfornation.dart';
import 'package:demo/presentation/Screen/Card%20info/Card%20info.dart';
import 'package:demo/presentation/Screen/Home/Home.dart';
import 'package:demo/presentation/Screen/Layers/Layers.dart';
import 'package:demo/presentation/Screen/Personal%20information/Personal%20information.dart';
import 'package:flutter/material.dart';
import 'package:demo/Component/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:const AddInformation(),
      theme: getApplicationTheme(),
    );
  }


}