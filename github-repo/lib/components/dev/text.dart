import 'package:flutter/material.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/components/text.dart';

class CustomDevText extends StatelessWidget {
  const CustomDevText({
    Key? key,
    required this.text,
    required this.typographyType,
    this.color,
    this.textAlign,
  }) : super(key: key);

  final String? text;
  final TextAlign? textAlign;
  final Color? color;
  final TypographyType typographyType;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text ?? "-",
      textAlign: textAlign,
      color: color,
      style: typographyType,
    );
  }
}
