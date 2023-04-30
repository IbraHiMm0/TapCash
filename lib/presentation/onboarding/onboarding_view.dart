import 'package:demo/presentation/resources/styles_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  bool isLast = false;
  String text='Next';
  void changeText() {
      setState(() {
        text='Get Started';
      });


  }
  void submit() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      title: 'Need MasterCard Now?',
      image: ImageAssets.onBoardingLogo1,
      body:
          'The Small logo is used for minimum size work when the Master logo is no longer clearly visible.',
    ),
    BoardingModel(
      title: 'Hassle Free Payments',
      image: ImageAssets.onBoardingLogo2,
      body:
          'The Small logo is used for minimum size work when the Master logo is no longer clearly visible.',
    ),
    BoardingModel(
      title: 'Fast Doorstep Deliveries',
      image: ImageAssets.onBoardingLogo3,
      body:
          'The Small logo is used for minimum size work when the Master logo is no longer clearly visible.',
    ),
    BoardingModel(
      title: 'Easy With Children',
      image: ImageAssets.onBoardingLogo4,
      body:
          'The Small logo is used for minimum size work when the Master logo is no longer clearly visible.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.barColor,
          elevation: 0.1,
          actions: [
            TextButton(
              onPressed: submit,
              child: Text(
                'SKIP',
                style: TextStyle(
                  color: ColorManager.grey2,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                        changeText();
                      });
                    } else {
                      setState(() {
                        isLast = false;
                        text='Next';
                      });
                    }
                  },
                  physics: const BouncingScrollPhysics(),
                  controller: boardController,
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                      spacing: 5.0,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      dotColor: ColorManager.lightGrey,
                      activeDotColor: ColorManager.primary,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      // Text('Next',
                      // style:
                      //   getBoldStyle(color: ColorManager.titleBlack
                      //   ,fontSize: AppSize.s18),
                      // ),
                      // IconButton(
                      //   onPressed: () {
                      //     if (isLast) {
                      //       submit();
                      //     } else {
                      //       boardController.nextPage(
                      //         duration: const Duration(
                      //           milliseconds: 750,
                      //         ),
                      //         curve: Curves.fastOutSlowIn,
                      //       );
                      //     }
                      //   },
                      //   highlightColor: ColorManager.primary,
                      //   icon: Icon(
                      //     color: ColorManager.blueArrow,
                      //     Icons.arrow_forward_ios,
                      //   ),
                      // ),

                      TextButton(
                        onPressed: () {
                          if (isLast) {
                            submit();
                            changeText();
                          } else {
                            boardController.nextPage(
                              duration: const Duration(
                                milliseconds: 750,
                              ),
                              curve: Curves.fastOutSlowIn,
                            );
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              text,
                              style: getBoldStyle(
                                  color: ColorManager.titleBlack,
                                  fontSize: AppSize.s18),
                            ),
                            const SizedBox(
                              width: AppSize.s8,
                            ),
                            Icon(
                              color: ColorManager.blueArrow,
                              Icons.arrow_forward_ios,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // FloatingActionButton(
                  //   onPressed: () {
                  //     if (isLast) {
                  //       submit();
                  //     } else {
                  //       boardController.nextPage(
                  //         duration: const Duration(
                  //           milliseconds: 750,
                  //         ),
                  //         curve: Curves.fastOutSlowIn,
                  //       );
                  //     }
                  //   },
                  //   elevation: 2,
                  //   child:  Icon(
                  //     color: ColorManager.blueArrow,
                  //     Icons.arrow_forward_ios,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            model.body,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black45,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      );
}
