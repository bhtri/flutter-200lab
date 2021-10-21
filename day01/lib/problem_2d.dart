import 'package:day01/area.dart';
import 'package:flutter/material.dart';

class Problem2D extends StatefulWidget {
  const Problem2D({Key? key}) : super(key: key);

  @override
  _Problem2DState createState() => _Problem2DState();
}

class _Problem2DState extends State<Problem2D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Area(flex: 3, color: Colors.blue.shade300),
            const SizedBox(height: 10),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Area(color: Colors.blue.shade300),
                    const SizedBox(width: 10),
                    Area(color: Colors.blue.shade300)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
