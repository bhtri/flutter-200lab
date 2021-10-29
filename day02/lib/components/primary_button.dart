import 'package:day02/constant/app_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    this.padding = const EdgeInsets.all(AppStyles.kDefaultPadding * 0.75),
    this.textStyle,
  }) : super(key: key);

  final String text;
  final VoidCallback? press;
  final Color color;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: press,
      color: color,
      padding: padding,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Text(text, style: textStyle),
    );
  }
}
