import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:interview_figma_newstartup/core/core.dart';
import 'package:interview_figma_newstartup/presentation/routers/router.gr.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/widgets/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(
                      const NotificationScreen(),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: const Icon(
                          Icons.notifications,
                          size: 30.0,
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 2.0,
                            left: 5.0,
                            bottom: 2.0,
                            right: 5.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: AppColor.red,
                          ),
                          child: Text(
                            '5',
                            style: AppStyle.caption.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.router.push(const SideNav());
                  },
                  padding: const EdgeInsets.only(right: 40.0),
                  icon: const Icon(
                    Icons.dehaze,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Online',
                      style: AppStyle.headline1.copyWith(
                        shadows: <Shadow>[
                          Shadow(
                            color: AppColor.black.withOpacity(0.2),
                            offset: const Offset(
                              5.0,
                              8.0,
                            ),
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                    ),
                    const AppButton(
                      label: 'Random Player',
                      imagePath: 'assets/svg/network.svg',
                    ),
                    const AppButton(
                      label: 'Invite with a link',
                      imagePath: 'assets/svg/share.svg',
                    ),
                    const AppButton(
                      label: 'Invite a Friend',
                      imagePath: 'assets/svg/addUser.svg',
                    ),
                    const SizedBox(
                      height: 90.0,
                    ),
                    Text(
                      'Offline',
                      style: AppStyle.headline1.copyWith(
                        shadows: <Shadow>[
                          Shadow(
                            color: AppColor.black.withOpacity(0.2),
                            offset: const Offset(
                              5.0,
                              8.0,
                            ),
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                    ),
                    const AppButton(
                      label: 'Computer',
                      imagePath: 'assets/svg/android.svg',
                    ),
                    const AppButton(
                      label: 'Local Player',
                      imagePath: 'assets/svg/userconnect.svg',
                    ),
                    const AppButton(
                      label: 'Near by Play',
                      imagePath: 'assets/svg/userShare.svg',
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
