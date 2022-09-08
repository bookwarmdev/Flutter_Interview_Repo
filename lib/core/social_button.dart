import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lox_corporate_services/core/core.dart';

class SocialButton extends StatelessWidget {
  final String text, imagePath;
  const SocialButton({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        color: AppColor.lightColorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              width: 20.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: AppStyle.button.copyWith(
                color: AppColor.lightColorScheme.inverseSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
