import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color color;
  final bool? outLine;
  final String? iconPath;
  final Color? overlayColor;
  final VoidCallback? onTap;
  final Size? size;
  const AppButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.color,
    this.outLine,
    this.overlayColor,
    this.iconPath,
    this.onTap,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: iconPath == "" ? Container() : SvgPicture.asset(iconPath ?? ""),
      label: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: color,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        overlayColor: MaterialStateProperty.all(overlayColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        fixedSize: size != null
            ? MaterialStateProperty.all(
                size,
              )
            : MaterialStateProperty.all(
                Size(
                  MediaQuery.of(context).size.width / 2.5,
                  50,
                ),
              ),
        side: outLine == true
            ? MaterialStateProperty.all(
                const BorderSide(
                  width: 1.5,
                  color: Color(0xFF1648CE),
                ),
              )
            : null,
        // padding: MaterialStateProperty.all(
        //   const EdgeInsets.symmetric(
        //     horizontal: 50.0,
        //     vertical: 15.0,
        //   ),
        // ),
      ),
    );
  }
}
