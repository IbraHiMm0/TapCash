import 'package:demo/Component/resources/assets_manager.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:flutter/material.dart';

class AddMonay extends StatelessWidget {
  const AddMonay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Money',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        leading: IconButton(icon: const Icon(IconBroken.Arrow___Left_2,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Please select one of the options'
                ' to top up your balance',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlueAccent,
                                radius: 20,
                              ),
                              Image(
                                image: AssetImage(ImageAssets.onBoardingLogo25),
                                width: 25,
                                height: 25,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Personal information',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'From any local  bank',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlueAccent,
                                radius: 20,
                              ),
                              Icon(
                                Icons.credit_card_sharp,
                                color: Colors.black,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Bank Card',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'instant',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlueAccent,
                                radius: 20,
                              ),
                              Image(
                                image: AssetImage(ImageAssets.onBoardingLogo27),
                                width: 25,
                                height: 25,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Request Money',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'instant',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
