import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:interview_figma_newstartup/core/core.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/home_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: const Icon(
              Icons.notifications,
              size: 30.0,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 90,
            padding: const EdgeInsets.only(
              bottom: 60.0,
              left: 10.0,
              right: 10.0,
            ),
            margin: const EdgeInsets.only(
              left: 25.0,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/png/notification_bg.png',
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  50.0,
                ),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 30.0,
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.router.pop(
                            const HomeScreen(),
                          );
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: AppColor.white,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const NotificationCard(
                  lable: 'John Michel',
                  imagePath: 'assets/png/Ellipse16.png',
                ),
                const NotificationCard(
                  lable: 'Victer',
                  imagePath: 'assets/png/Ellipse17.png',
                ),
                const NotificationCard(
                  lable: 'Sara',
                  imagePath: 'assets/png/Ellipse18.png',
                ),
                const NotificationCard(
                  lable: 'Homorge',
                  imagePath: 'assets/png/Ellipse19.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String lable;
  final String imagePath;
  const NotificationCard({
    Key? key,
    required this.lable,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lable,
                  style: AppStyle.bodyText1.copyWith(
                    color: AppColor.white,
                    fontSize: 18.0,
                    shadows: <Shadow>[
                      Shadow(
                        color: AppColor.black.withOpacity(0.5),
                        blurRadius: 10.0,
                        offset: const Offset(
                          0.0,
                          5.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        fixedSize: const Size(84, 30),
                        textStyle: AppStyle.bodyText1.copyWith(
                          fontSize: 14.0,
                          shadows: <Shadow>[
                            Shadow(
                              color: AppColor.black.withOpacity(0.5),
                              blurRadius: 10.0,
                              offset: const Offset(
                                0.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: const Text('Accept'),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        fixedSize: const Size(84, 30),
                        textStyle: AppStyle.bodyText1.copyWith(
                          fontSize: 14.0,
                          shadows: <Shadow>[
                            Shadow(
                              color: AppColor.black.withOpacity(0.5),
                              blurRadius: 10.0,
                              offset: const Offset(
                                0.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Decline',
                        style: TextStyle(
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
