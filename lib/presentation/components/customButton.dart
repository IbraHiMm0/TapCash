import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
   customButton({this.onTap,required this.text}) ;
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15.0,
              fontWeight: FontWeight.w800,
              color: Colors.black87
            ),
          ),
        ),
      ),
    );
  }
}
