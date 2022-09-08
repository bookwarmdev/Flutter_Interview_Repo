import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lox_corporate_services/core/core.dart';
import 'package:lox_corporate_services/presentation/routers/router.gr.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _checkKeyboardVisibilty = MediaQuery.of(context).viewInsets.bottom;
    return AuthBackground(
      checkKeyboardVisibilty: _checkKeyboardVisibilty,
      text: "Login",
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        "Email",
                        style: AppStyle.caption.copyWith(
                          color: AppColor.lightColorScheme.shadow,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        "Password",
                        style: AppStyle.caption.copyWith(
                          color: AppColor.lightColorScheme.shadow,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: InkResponse(
                          onTap: () {},
                          child: Text(
                            "Forgot?",
                            style: AppStyle.caption.copyWith(
                              color: AppColor.lightColorScheme.shadow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  context.router.replaceAll([AppNav()]);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      AppColor.lightColorScheme.shadow),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.0),
                  child: Text(
                    "Log In",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Or continue with",
              style: AppStyle.headline6.copyWith(
                color: AppColor.lightColorScheme.outline,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialButton(
                    text: "Google", imagePath: "assets/icons/google.svg"),
                SizedBox(
                  width: 10.0,
                ),
                SocialButton(
                    text: "Facebook", imagePath: "assets/icons/facebook.svg"),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                text: "Don’t have account?",
                style: AppStyle.caption.copyWith(
                  color: AppColor.lightColorScheme.onSurface,
                ),
                children: [
                  TextSpan(
                    text: " Create now",
                    style: AppStyle.caption.copyWith(
                      color: AppColor.lightColorScheme.shadow,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.router.push(
                            const SingUpScreen(),
                          ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
