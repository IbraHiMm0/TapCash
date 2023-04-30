import 'package:demo/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';


class ChildScreenView extends StatefulWidget {
  const ChildScreenView({Key? key}) : super(key: key);

  @override
  State<ChildScreenView> createState() => _ChildScreenViewState();
}


GlobalKey<FormState> formKey = GlobalKey();

class _ChildScreenViewState extends State<ChildScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Image(
                image: AssetImage(ImageAssets.childP),
                height: AppSize.s350,
                width: AppSize.s350,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Last Step .',
                    style: getBoldStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s30),
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  Text(
                    AppStrings.childText,
                    style: getLightStyle(
                        color: ColorManager.grey2,
                        fontSize: AppSize.s18),
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
                hintText: 'National ID (For Child)',
                numForm: 14, //stop typing when it 14 numbers
                valid: (value) {
                  if(value!.isEmpty){
                    return 'National ID is Required';
                  }
                  else if(value.length <= 13){
                    return 'National ID should contain 14 characters';
                  }
                  return null;
                }, //when submit without input
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: AppSize.s30,
              ),

              customButton(
                text: 'Submit',
                color: ColorManager.blueArrow,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    setState(() {});
                    Navigator.pushReplacementNamed(
                        context, Routes.verificationRoute);
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
