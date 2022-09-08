import 'package:flutter/material.dart';
import 'package:lox_corporate_services/core/core.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  final String text;
  const AuthBackground({
    Key? key,
    required double checkKeyboardVisibilty,
    required this.child,
    required this.text,
  })  : _checkKeyboardVisibilty = checkKeyboardVisibilty,
        super(key: key);

  final double _checkKeyboardVisibilty;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        final currentState = FocusScope.of(context);
        if (!currentState.hasPrimaryFocus && currentState.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: _checkKeyboardVisibilty == 0
                      ? const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Subtract.png"),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                        )
                      : const BoxDecoration(),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 8),
                    child: Column(
                      children: [
                        _checkKeyboardVisibilty == 0
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/lox.png",
                                    width: 60.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "The test",
                                        style: AppStyle.bodyText2.copyWith(
                                          color: AppColor.lightColorScheme
                                              .primaryContainer,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                      Text(
                                        "Powered by Lox",
                                        style: AppStyle.bodyText2.copyWith(
                                          color: AppColor
                                              .lightColorScheme.onBackground,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(),
                        SizedBox(
                          height: _checkKeyboardVisibilty == 0
                              ? MediaQuery.of(context).size.height / 4
                              : 20,
                        ),
                        Text(
                          text,
                          style: AppStyle.headline4.copyWith(
                            color: AppColor.lightColorScheme.onBackground,
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: child,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
