import 'package:flutter/material.dart';

import 'area.dart';

class Problem2C extends StatefulWidget {
  const Problem2C({Key? key}) : super(key: key);

  @override
  _Problem2CState createState() => _Problem2CState();
}

class _Problem2CState extends State<Problem2C> {
  List<Widget> buildRow({int column = 1}) {
    List<Widget> lstWidget = [];
    for (var i = 0; i < column - 1; i++) {
      lstWidget.add(const Area(color: Colors.pink));
      lstWidget.add(const SizedBox(width: 5));
    }
    lstWidget.add(const Area(color: Colors.pink));
    return lstWidget;
  }

  List<Widget> buildColumn({int row = 1}) {
    List<Widget> lstWidget = [];
    for (var i = 0; i < row - 1; i++) {
      lstWidget.add(const Area(color: Colors.pink));
      lstWidget.add(const SizedBox(height: 5));
    }
    lstWidget.add(const Area(color: Colors.pink));
    return lstWidget;
  }

  Widget buildContent() {
    Container container = Container();
    
    return container;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}
