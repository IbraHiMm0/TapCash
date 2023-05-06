import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spending Analytics ',style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),),
      ),
      body: Column(
        children: const [

        ],
      ),
    );
  }
}
