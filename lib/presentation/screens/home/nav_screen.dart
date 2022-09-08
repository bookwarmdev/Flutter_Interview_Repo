import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:interview_figma_newstartup/core/core.dart';
import 'package:interview_figma_newstartup/presentation/routers/router.gr.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/widgets/nav_items.dart';

class SideNav extends StatefulWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20.0,
                ),
                decoration: const BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      70.0,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        const CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage(
                            'assets/png/user.png',
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Username',
                          style: AppStyle.bodyText1.copyWith(
                            color: AppColor.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          'profile',
                          style: AppStyle.bodyText1.copyWith(
                            color: AppColor.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        context.router.pop(const HomeScreen());
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: AppColor.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width - 160,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        70.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: const [
                      NavItems(
                        lable: 'Sound',
                        iconVisible: true,
                        iconData: Icons.volume_up,
                      ),
                      NavItems(
                        lable: 'Leaderboard',
                      ),
                      NavItems(
                        lable: 'Friends',
                      ),
                      NavItems(
                        lable: 'Logout',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
