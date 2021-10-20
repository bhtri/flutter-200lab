import 'package:day01/area.dart';
import 'package:flutter/material.dart';

class Problem2A extends StatefulWidget {
  const Problem2A({Key? key}) : super(key: key);

  @override
  _Problem2AState createState() => _Problem2AState();
}

class _Problem2AState extends State<Problem2A> {
  List<Widget> buildContent({int column = 1}) {
    List<Widget> lstWidget = [];
    for (var i = 0; i < column - 1; i++) {
      lstWidget.add(const Area(color: Colors.pink));
      lstWidget.add(const SizedBox(width: 5));
    }
    lstWidget.add(const Area(color: Colors.pink));
    return lstWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: buildContent(column: 5),
        ),
      ),
    );
  }
}
