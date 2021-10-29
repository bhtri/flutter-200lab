import 'package:day02/constant/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryAvaTar extends StatelessWidget {
  const PrimaryAvaTar({
    Key? key,
    required this.imgPath,
    required this.isActive,
    required this.numberMess,
  }) : super(key: key);

  final String imgPath;
  final bool isActive;
  final int numberMess;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imgPath),
        ),
        if (isActive)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: AppColors.kPink,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: AppColors.kWhite,
                ),
              ),
              child: Center(
                child: Text(
                  '$numberMess',
                  style: TextStyle(color: AppColors.kWhite),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
