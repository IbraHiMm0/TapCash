import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:demo/cubit/authCubit/auth_cubit.dart';
import 'package:demo/cubit/authCubit/auth_state.dart';
import 'package:demo/dio_helper/end_points.dart';
import 'package:demo/presentation/resources/assets_manager.dart';
import 'package:demo/presentation/resources/color_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../dio_helper/DioHelper.dart';
import '../../models/authModel/auth_model.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';


class LoginView extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey();
  var ssidAddress = TextEditingController();
  var passAddress = TextEditingController();


  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit,AuthState>(
        listener:(context, state) {
          if(state is SuccessState){
            if(state.authModel.message=="Logged In"){
              print(AuthCubit.get(context).authModel?.message);
              // print(state.authModel.message);
              print('happy');

              // Fluttertoast.showToast(
              //     msg: AuthCubit.get(context).authModel!.message!,
              //     toastLength: Toast.LENGTH_LONG,
              //     gravity: ToastGravity.BOTTOM,
              //     timeInSecForIosWeb: 5,
              //     backgroundColor: Colors.green,
              //     textColor: Colors.white,
              //     fontSize: 16.0
              // );
            }
            else{
              print('sad');
              print(state.authModel.message);
              Fluttertoast.showToast(
                  msg: state.authModel.message!,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 5,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
           }
          }
        },
        builder: (context, state) {
            return Scaffold(
              backgroundColor: ColorManager.mainColor,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s18),
                child: Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: AppSize.s150,
                      ),
                      const Image(
                        image: AssetImage(ImageAssets.splashLogo),
                        height: AppSize.s70,
                        width: AppSize.s70,
                      ),
                      const SizedBox(
                        height: AppSize.s24,
                      ),
                      Row(
                        children:  [
                          Text(
                            'Login',
                            style: getBoldStyle(
                                color: ColorManager.titleBlack,
                                fontSize: AppSize.s24),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s24,
                      ),
                      customField(
                        icon:  Icon(
                          Icons.credit_card_outlined,
                          color: ColorManager.primary,
                        ),
                        obs: false,
                        hintText: 'National ID',
                        numForm: 14,
                        controller: ssidAddress,
                        valid: (value) {
                          if(value!.isEmpty){
                            return 'National ID is Required';
                          }
                          else if(value.length <= 13){
                            return 'National ID should contain 14 characters';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      customField(
                        icon:  Icon(
                          Icons.lock_outline,
                          color: ColorManager.primary,
                        ),
                        obs: AuthCubit.get(context).isPass,
                        hintText: 'Password',
                        numForm: 24,
                        controller: passAddress,
                        valid: (value) {

                          if(value!.isEmpty){
                            return 'Password is Required';
                          }
                          else if(value.length <= 8){
                            return 'Password should contain more than 8 characters';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        suffix: IconButton(
                          onPressed: (){
                            AuthCubit.get(context).changePass();
                          },
                          icon: Icon(
                            AuthCubit.get(context).suffix,
                            color: ColorManager.lightPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.forgotPasswordRoute);
                              },
                              child: Text(
                                ' Forgot Password?',
                                style: getRegularStyle(
                                    color: ColorManager.blueArrow,
                                    fontSize: AppSize.s14),
                              ),
                            ), //on click it navigate
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      ConditionalBuilder(
                          condition: state is! LoadingState,
                          builder: (context) => customButton(
                            text: 'Login',
                            color: ColorManager.blueArrow,
                            onTap: () async {
                              if (formKey.currentState!.validate()) {
                                AuthCubit.get(context).userLogin(password: passAddress.text, ssid: ssidAddress.text);
                                Navigator.pushReplacementNamed(
                                    context, Routes.splashRoute);
                              }
                            },
                          ),
                          fallback: (context) => const Center(child: CircularProgressIndicator()),
                      ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New to Tap Cash ?',
                            style: getRegularStyle(
                                color: ColorManager.titleBlack,
                                fontSize: AppSize.s16
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, Routes.registerRoute);
                            },
                            child: Text(
                              ' Register',
                              style: getBoldStyle(
                                  color: ColorManager.blueArrow,
                                  fontSize: AppSize.s18),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s14,
                      ),
                    ],
                  ),
                ),
              ),
            );
        },
      ),
    );
  }



}