import 'package:day01/area.dart';
import 'package:flutter/material.dart';

class Problem2B extends StatefulWidget {
  const Problem2B({Key? key}) : super(key: key);

  @override
  _Problem2BState createState() => _Problem2BState();
}

class _Problem2BState extends State<Problem2B> {
  List<Widget> buildContent({int row = 1}) {
    List<Widget> lstWidget = [];
    if (row > 0) {
      for (var i = 0; i < row - 1; i++) {
        lstWidget.add(const Area(color: Colors.pink));
        lstWidget.add(const SizedBox(height: 5));
      }
      lstWidget.add(const Area(color: Colors.pink));
    } else {
      lstWidget.add(
        const Center(
          child: Text(
            'Can not build',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    return lstWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildContent(row: 4),
        ),
      ),
    );
  }
}
