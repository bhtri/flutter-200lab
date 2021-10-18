import 'package:flutter/material.dart';

class Area extends StatelessWidget {
  const Area({
    Key? key,
    this.flex = 1,
    this.color = Colors.white,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final int flex;
  final Color color;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
        margin: margin,
      ),
    );
  }
}
