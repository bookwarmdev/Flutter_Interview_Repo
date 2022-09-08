import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_figma_newstartup/core/core.dart';

class AppButton extends StatelessWidget {
  final String label;
  final String imagePath;

  const AppButton({
    Key? key,
    required this.label,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      padding: const EdgeInsets.symmetric(vertical: 17.0),
      width: MediaQuery.of(context).size.width - 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            AppColor.primary,
            AppColor.primary.withOpacity(0.8),
            AppColor.primary,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: AppStyle.bodyText1.copyWith(
              fontSize: 24.0,
              color: AppColor.white,
              shadows: <Shadow>[
                Shadow(
                  color: AppColor.black.withOpacity(0.3),
                  offset: const Offset(
                    0.0,
                    4.0,
                  ),
                  blurRadius: 10.0,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            imagePath,
          ),
        ],
      ),
    );
  }
}
