import 'package:demo/Component/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EDEDED'),
      appBar: AppBar(
        title: const Text(
          'Card Info',
          style: TextStyle(
              fontSize: AppSize.s24,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
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
              ],
            ),
            Container(
              height: 7,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  'this is your card information that you can copy and use for online payment'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Card Number',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Card Holder Name',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Expiration Data',
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.grey))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'CVV',
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.grey))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('#527EDB')),
                    child: const Text(
                      'Ok',
                      style: TextStyle(fontSize: 25),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
