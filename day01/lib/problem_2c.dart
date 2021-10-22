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

  // Unsupported operation: Cannot add to an unmodifiable list
  Widget buildContent(int row, int column) {
    Column col = Column();
    for (var i = 0; i < row; i++) {
      col.children.add(Row(
        children: buildRow(column: column),
      ));
      col.children.add(const SizedBox(height: 5));
    }
    return col;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(child: buildContent(8, 4)), // error ??
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildContent2(8, 4),
        ),
      ),
    );
  }

  List<Widget> buildContent2(int row, int column) {
    List<Widget> lst = [];
    if (row > 0 && column > 0) {
      for (var i = 0; i < row; i++) {
        lst.add(Expanded(
          child: Row(
            children: buildRow(column: column),
          ),
        ));
        lst.add(const SizedBox(height: 5));
      }
    } else {
      lst.add(
        const Center(
          child: Text(
            'Can not build',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    return lst;
  }
}
