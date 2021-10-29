import 'package:day02/constant/app_colors.dart';
import 'package:day02/constant/app_styles.dart';
import 'package:flutter/material.dart';

class PrimaryTextBox extends StatelessWidget {
  const PrimaryTextBox({
    Key? key,
    this.icon,
    this.hintText,
    this.controller,
  }) : super(key: key);

  final Icon? icon;
  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppStyles.kDefaultPadding * 0.7),
      decoration: BoxDecoration(
        color: AppColors.kLight.withOpacity(0.2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          if (icon != null) icon!,
          const SizedBox(width: AppStyles.kDefaultPadding / 4),
          Expanded(
            child: TextField(
              style: TextStyle(color: AppColors.kWhite),
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: AppColors.kWhite),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
