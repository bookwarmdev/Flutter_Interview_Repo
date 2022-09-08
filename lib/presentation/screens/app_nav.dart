import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/screens/home/search/search.dart';

class AppNav extends StatefulWidget {
  const AppNav({
    Key? key,
  }) : super(key: key);

  @override
  State<AppNav> createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: AppColor.lightColorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70.0,
                child: Image.asset(
                  "assets/images/lox.png",
                  fit: BoxFit.cover,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            Text(
              "The test",
              style: AppStyle.bodyText2.copyWith(
                color: AppColor.lightColorScheme.primaryContainer,
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Powered by Lox",
              style: AppStyle.bodyText2.copyWith(
                color: AppColor.lightColorScheme.onBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      const SearchScreen(),
      const AppointmentScreen(),
      Container(
        color: AppColor.lightColorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70.0,
                child: Image.asset(
                  "assets/images/lox.png",
                  fit: BoxFit.cover,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            Text(
              "The test",
              style: AppStyle.bodyText2.copyWith(
                color: AppColor.lightColorScheme.primaryContainer,
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Powered by Lox",
              style: AppStyle.bodyText2.copyWith(
                color: AppColor.lightColorScheme.onBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ];
    Widget _buttomNavItem({
      required String icon,
      required int index,
      required String text,
    }) {
      return GestureDetector(
        onTap: (() {
          setState(() {
            selectedIndex = index;
          });
        }),
        child: SizedBox(
          height: 55.0,
          width: MediaQuery.of(context).size.width / 4,
          child: Column(
            children: [
              selectedIndex == index
                  ? Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5FAFF),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          icon,
                          color: AppColor.lightColorScheme.onPrimaryContainer,
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          icon,
                          color: AppColor.lightColorScheme.outline,
                        ),
                      ),
                    ),
              Text(
                text,
                style: AppStyle.button.copyWith(
                  color: selectedIndex == index
                      ? AppColor.lightColorScheme.onPrimaryContainer
                      : AppColor.lightColorScheme.outline,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.lightColorScheme.background,
          boxShadow: [
            BoxShadow(
              color: AppColor.lightColorScheme.outline,
              blurRadius: 6.0,
              spreadRadius: 0.0,
              offset: const Offset(2.0, 0.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Row(
          children: [
            _buttomNavItem(
              text: "Home",
              icon: 'assets/icons/home.svg',
              index: 0,
            ),
            _buttomNavItem(
              text: "Search",
              icon: 'assets/icons/serach.svg',
              index: 1,
            ),
            _buttomNavItem(
              text: "Apponitment",
              icon: 'assets/icons/apponitment.svg',
              index: 2,
            ),
            _buttomNavItem(
              text: "Profile",
              icon: 'assets/icons/profile.svg',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }
}
