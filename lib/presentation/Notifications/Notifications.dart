
import 'package:demo/Component/resources/assets_manager.dart';
import 'package:demo/Component/resources/values_manager.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',

          style: TextStyle(
              fontSize: AppSize.s24,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
        leading: IconButton(icon: const Icon(IconBroken.Arrow___Left_2,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children:const [
                               CircleAvatar(
                                 backgroundColor: Colors.tealAccent,
                                  radius: 20,
                                ),
                                Icon(Icons.credit_card,color: Colors.white,),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Card Transaction',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
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
              Text(
                'Yesterday',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
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
                          children:const [
                            CircleAvatar(
                              backgroundColor: Colors.orangeAccent,
                              radius: 20,
                            ),
                            Icon(Icons.notifications,color: Colors.white,),
                          ],
                        ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New feature Alert',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'Now you can track your Expenses',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children:const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20,
                                ),
                                Image(image: AssetImage(ImageAssets.onBoardingLogo30),width: 20,height: 20,)
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car disabled',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'You have disabled your Card',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
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
              Text(
                '7th october ,2023 ',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
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
                              children:const [
                                CircleAvatar(
                                  backgroundColor: Colors.orangeAccent,
                                  radius: 20,
                                ),
                                Icon(Icons.notifications,color: Colors.white,),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New feature Alert',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'Now you can track your Expenses',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children:const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20,
                                ),
                                Image(image: AssetImage(ImageAssets.onBoardingLogo30),width: 20,height: 20,)
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car disabled',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'You have disabled your Card',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
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
              Text(
                '9th february ,2023',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
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
                              children:const [
                                CircleAvatar(
                                  backgroundColor: Colors.orangeAccent,
                                  radius: 20,
                                ),
                                Icon(Icons.notifications,color: Colors.white,),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New feature Alert',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'Now you can track your Expenses',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children:const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20,
                                ),
                                Image(image: AssetImage(ImageAssets.onBoardingLogo30),width: 20,height: 20,)
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car disabled',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'You have disabled your Card',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              IconBroken.Arrow___Right_2,
                              size: 30,
                            )
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
      ),
    );
  }
}
