import 'package:day02/constant/app_styles.dart';
import 'package:flutter/material.dart';

class PrimaryChatCard extends StatelessWidget {
  const PrimaryChatCard({
    Key? key,
    required this.avatar,
    required this.name,
    required this.lastMessage,
    required this.time,
  }) : super(key: key);

  final Widget avatar;
  final String name;
  final String lastMessage;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        // horizontal: AppStyles.kDefaultPadding,
        vertical: AppStyles.kDefaultPadding * 0.5,
      ),
      child: Row(
        children: [
          avatar,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppStyles.kDefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(flex: 3, child: Text(name, style: AppStyles.h2)),
                      Opacity(
                          opacity: 0.4, child: Text(time, style: AppStyles.h2)),
                    ],
                  ),
                  const SizedBox(height: AppStyles.kDefaultPadding / 2),
                  Text(
                    lastMessage,
                    style: AppStyles.h2,
                  ),
                  const SizedBox(height: AppStyles.kDefaultPadding / 2),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
