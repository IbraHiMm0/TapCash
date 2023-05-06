import 'package:demo/Component/resources/assets_manager.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EDEDED'),
      appBar: AppBar(
        title: Text(
          'PersonalInformation',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        leading: IconButton(icon: const Icon(IconBroken.Arrow___Left_2,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: HexColor('#FF7A00'),
                  ),
                ),
                Positioned(
                  top: 170,
                  child: Container(
                    width: 450,
                    height: 50,
                    decoration: BoxDecoration(
                        color: HexColor('#EDEDED'),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80))),
                  ),
                ),
                const Positioned(
                  top: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ImageAssets.onBoardingLogo28),
                    radius: 65,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Text(
                'Abdelrahman Arfat',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Last log in : 25 Oct 2023 ,2.30 AM ',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Name',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Abdelrahman Arfat',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'UpDate',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'E-Mail',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'abdoarfat924@gmail.com',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              maxLines: 2,
                            )
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'UpDate',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Phone Number',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '01587946324',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'UpDate',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
