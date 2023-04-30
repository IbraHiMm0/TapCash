import 'package:flutter/material.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/customButton.dart';


class QrInfoView extends StatefulWidget {
  const QrInfoView({Key? key}) : super(key: key);

  @override
  State<QrInfoView> createState() => _QrInfoViewState();
}


GlobalKey<FormState> formKey = GlobalKey();

void backTo() {
  // Navigator.pushReplacementNamed(context, Routes.); //navigate on
}
class _QrInfoViewState extends State<QrInfoView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.mainColor,
        elevation: 3.2,
        actions:  [
           Expanded(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 IconButton(
                    onPressed: backTo,
                    icon: Icon(
                  Icons.arrow_back,
                      color: ColorManager.inputBlack,
          )
                 ),
                 const SizedBox(
                   width: AppSize.s12,
                 ),
                 const SizedBox(
                   width: AppSize.s30,
                 ),
                 const SizedBox(
                   width: AppSize.s30,
                 ),

                 Text(
                   'Cash Withdraw',
                   style: getBoldStyle(
                     color: ColorManager.inputBlack,
                     fontSize: AppSize.s24,
                   ),
                 ),
               ],
             ),
           ),
        ],
      ),
      backgroundColor: ColorManager.mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
        child: ListView(
          children: [
            const SizedBox(
              height: AppSize.s50,
            ),
            const Image(
              image: AssetImage(ImageAssets.qrInfo),
              height: AppSize.s230,
              width: AppSize.s230,
            ),
            Padding(
              padding: const EdgeInsets.only(left:AppSize.s20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(
                    height: AppSize.s50,
                  ),
                  Row(
                    children: [
                      Container(
                          width:AppSize.s30,
                          height:AppSize.s30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1),
                          ),

                          child:  Center(child:Text('1',
                          style: getRegularStyle(fontSize: AppSize.s18, color: ColorManager.inputBlack),))),
                      const SizedBox(
                        width: AppSize.s8,
                      ),
                      Text(
                        'Click “Scan Qr Code”',
                        style: getBoldStyle(
                            color: ColorManager.titleBlack,
                            fontSize: AppSize.s20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  Row(
                    children: [
                      Container(
                          width:AppSize.s30,
                          height:AppSize.s30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1),
                          ),

                          child:  Center(child:Text('2',
                            style: getRegularStyle(fontSize: AppSize.s18, color: ColorManager.inputBlack),))),
                      const SizedBox(
                        width: AppSize.s8,
                      ),
                      Text(
                        'Scan The Code On ATM Screen',
                        style: getBoldStyle(
                            color: ColorManager.titleBlack,
                            fontSize: AppSize.s18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  Row(
                    children: [
                      Container(
                          width:AppSize.s30,
                          height:AppSize.s30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1),
                          ),
                          child:  Center(child:Text('3',
                            style: getRegularStyle(fontSize: AppSize.s18, color: ColorManager.inputBlack),))),
                      const SizedBox(
                        width: AppSize.s8,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Select The amount From Tap Cash',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: getBoldStyle(
                              color: ColorManager.titleBlack,
                              fontSize: AppSize.s18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.s50,
            ),
            customButton(
              text: 'Scan Qr Code',
              color: ColorManager.blueArrow,
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.qrSplashRoute);
              },
            ),
            const SizedBox(
              height: AppSize.s14,
            ),
          ],
        ),
      ),
    );
  }
}
