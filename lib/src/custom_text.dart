import 'package:flutter/material.dart';
import 'security.dart';

class CustomTextBold extends StatelessWidget {
  final String text;
  final Color? textColour;
  final double? textSize;
  final TextAlign? textAlign;
  final double? lineHeight;
  final FontWeight? fontWeight;
  final String? textFontFamily;

  const CustomTextBold({
    Key? key,
    required this.text,
    this.textColour,
    this.textSize,
    this.textAlign,
    this.lineHeight,
    this.fontWeight,
    this.textFontFamily = "NunitoSansSemiBold",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontFamily: textFontFamily,
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        height: lineHeight,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColour;
  final double? textSize;
  final TextAlign? textAlign;
  final double? lineHeight;
  final FontWeight? fontWeight;
  final String? textFontFamily;

  const CustomText({
    Key? key,
    required this.text,
    this.textColour,
    this.textSize,
    this.textAlign,
    this.fontWeight,
    this.lineHeight,
    this.textFontFamily = "NunitoSansRegular",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!CustomFieldBoxSecurity.isValid) {
      return const Text(
        'Invalid or missing security key',
        style: TextStyle(color: Colors.red),
      );
    }
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        height: 1.4,
        fontFamily: textFontFamily,
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),
    );
  }
}
