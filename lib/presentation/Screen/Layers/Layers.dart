import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/Cubit.dart';
import 'package:demo/presentation/Cubit_State_Management/Layers_Cubit/State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class Layers extends StatelessWidget {
  const Layers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayerCubit(),
      child: BlocConsumer<LayerCubit, LayerState>(
          builder: (context, state) {
            GlobalKey<CurvedNavigationBarState> bottomNavigationKey =
                GlobalKey();

            return Scaffold(
              bottomNavigationBar: CurvedNavigationBar(
                key: bottomNavigationKey,
                index: LayerCubit.get(context).currentIndex,
                height: 45.0,
                items: const <Widget>[
                  Icon(
                    IconBroken.Home,color: Colors.white,
                  ),
                  Icon(
                    Icons.analytics_outlined,color: Colors.white,
                  ),
                  Icon(
                    Icons.credit_card,color: Colors.white,
                  ),
                  Icon(
                    IconBroken.Category,color: Colors.white,
                  ),
                ],
                color: Colors.grey,
                buttonBackgroundColor: HexColor('#FF7A00'),
                backgroundColor: Colors.white,
                animationCurve: Curves.bounceIn,
                animationDuration: const Duration(milliseconds: 600),
                onTap: (index) {
                  LayerCubit.get(context).changeIconBottonNav(index);
                },
                letIndexChange: (index) => true,
              ),
              // BottomNavigationBar(
              //   onTap: (index) {
              //     CardCubit.get(context).changeIconBottonNav(index);
              //   },
              //   // showSelectedLabels: false,
              //   // showUnselectedLabels: false,
              //   selectedItemColor: HexColor('#FF7A00'),
              //   unselectedItemColor: Colors.white,
              //   backgroundColor: Colors.grey[400],
              //
              //   type: BottomNavigationBarType.fixed,
              //   currentIndex: CardCubit.get(context).currentIndex,
              //
              //   items: const [
              //     BottomNavigationBarItem(
              //       icon: Icon(
              //         IconBroken.Home,
              //       ),
              //       label: 'Home',
              //     ),
              //     BottomNavigationBarItem(
              //         icon: Icon(
              //           Icons.analytics_outlined,
              //         ),
              //         label: 'Analytics' ),
              //     BottomNavigationBarItem(
              //         icon: Icon(
              //           Icons.credit_card,
              //         ),
              //         label: 'Card'),
              //     BottomNavigationBarItem(
              //         icon: Icon(
              //           IconBroken.Category,
              //         ),
              //         label: 'Settings'),
              //   ],
              // ),
              body: LayerCubit.get(context)
                  .screens[LayerCubit.get(context).currentIndex],
            );
          },
          listener: (context, state) {}),
    );
  }
}
