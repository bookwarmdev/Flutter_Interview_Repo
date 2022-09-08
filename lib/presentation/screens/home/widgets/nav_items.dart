import 'package:flutter/material.dart';
import 'package:interview_figma_newstartup/core/core.dart';

class NavItems extends StatelessWidget {
  final String lable;
  final IconData? iconData;
  final bool? iconVisible;
  const NavItems({
    Key? key,
    required this.lable,
    this.iconData,
    this.iconVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Text(
              lable,
              style: AppStyle.bodyText1.copyWith(
                color: AppColor.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
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
            Visibility(
              visible: iconVisible ?? false,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(
                  left: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: AppColor.white,
                ),
                child: Icon(iconData),
              ),
            )
          ],
        ),
      ],
    );
  }
}
