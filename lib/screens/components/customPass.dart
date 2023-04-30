// import 'package:demo/presentation/resources/color_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pw_validator/flutter_pw_validator.dart';
//
// import '../resources/styles_manager.dart';
// import '../resources/values_manager.dart';
//
// class customPass extends StatelessWidget {
//   customPass({this.hintText,this.numForm,this.valid,required this.controller,this.onChanged,this.suffix,required this.icon,required this.keyboardType,this.obs=false,});
//
//   String? hintText;
//   Function(String)? onChanged;
//   Icon icon;
//   IconButton? suffix;
//   bool? obs;
//   int? numForm;
//   String? Function(String?)? valid;
//   TextEditingController controller;
//   TextInputType keyboardType;
//   final GlobalKey<FlutterPwValidatorState> validatorKey = GlobalKey<FlutterPwValidatorState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//          const Flexible(flex: 5, child:  FlutterLogo(size: 200)),
//         Flexible(
//           flex: 7,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 2.0),
//                 child: TextField(
//                     controller: controller,
//                     decoration:  const InputDecoration(
//                         hintText: "Password",
//                         border:  OutlineInputBorder(
//                             borderSide: BorderSide()))),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               FlutterPwValidator(
//                 key: validatorKey,
//                 controller: controller,
//                 minLength: 8,
//                 uppercaseCharCount: 2,
//                 numericCharCount: 3,
//                 specialCharCount: 1,
//                 normalCharCount: 3,
//                 width: 400,
//                 height: 150,
//                 onSuccess: () {
//                   print("MATCHED");
//                   ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
//                       content:  Text("Password is matched")));
//                 },
//                 onFail: () {
//                   print("NOT MATCHED");
//                 },
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
//   }
