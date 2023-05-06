import 'package:demo/Component/resources/assets_manager.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/Cubit.dart';
import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LayerCubit(),
        child: BlocConsumer<LayerCubit, LayerState>(
          listener: (context, state) {},
          builder: (context, state) {
            // to Get Methods From Cubit
            final GetFromCubit = LayerCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'History',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.black),
                ),
                leading:  IconButton(icon: const Icon(IconBroken.Arrow___Left_2,color: Colors.black,), onPressed: () {
                  Navigator.pop(context);
                },),
              ),
              body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orangeAccent,
                      Colors.white
                    ],begin: Alignment.topCenter,
                    end: Alignment.bottomCenter

                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 60,
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    GetFromCubit.ChangeColorButtonAll();
                                    GetFromCubit.ButtonIncome = false;
                                    GetFromCubit.ButtonOutcome = false;
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                      (GetFromCubit.ButtonAll == true)
                                          ? Colors.deepOrange
                                          : Colors.grey),
                                  child: const Text('All'),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                height: 60,
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    GetFromCubit.ChangeColorButtonIncome();
                                    GetFromCubit.ButtonAll = false;
                                    GetFromCubit.ButtonOutcome = false;
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:  (GetFromCubit.ButtonIncome == true)
                                          ? Colors.deepOrange
                                          : Colors.grey),
                                  child: const Text('Income'),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                height: 60,
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    GetFromCubit.ChangeColorButtonOutcome();
                                    GetFromCubit.ButtonAll = false;
                                    GetFromCubit.ButtonIncome = false;

                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: (GetFromCubit.ButtonOutcome == true)
                                          ? Colors.deepOrange
                                          : Colors.grey),
                                  child: const Text('Outcome'),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                        child: ListView.builder( shrinkWrap:true,itemBuilder: (context,index)=> Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                  AssetImage(ImageAssets.onBoardingLogo12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "cashback  promo",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "cashback",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: const[
                                    Text(
                                      "\$150.0",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "6:43 AM",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),itemCount: 3,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                        child: ListView.builder( shrinkWrap:true,itemBuilder: (context,index)=> Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                  AssetImage(ImageAssets.onBoardingLogo12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "cashback  promo",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "cashback",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: const[
                                    Text(
                                      "\$-150.0",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "6:43 AM",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),itemCount: 3,),
                      )
                    ],
                  ),
                ),
              )
            );
          },
        ));
  }
}
