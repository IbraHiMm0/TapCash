
import 'package:demo/presentation/Screen/Add_Monay/AddMonay.dart';
import 'package:demo/presentation/Screen/Card%20info/Card%20info.dart';
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
     home:const CardInfo(),
      theme: getApplicationTheme(),
    );
  }


}