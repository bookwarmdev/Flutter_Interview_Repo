import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  context.router.replaceAll([const LoginScreen()]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Skilp",
                    style: AppStyle.caption.copyWith(
                      color: AppColor.lightColorScheme.onPrimaryContainer,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Image.asset("assets/images/Charco.png"),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Hi there!",
                  style: AppStyle.headline2.copyWith(
                    color: AppColor.lightColorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "This is Lox Service app development test!",
                  style: AppStyle.headline2.copyWith(
                    color: AppColor.lightColorScheme.onBackground,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
