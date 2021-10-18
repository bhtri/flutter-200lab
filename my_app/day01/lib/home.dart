import 'package:day01/area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(children: const [
                            Area(color: Colors.grey),
                            Area(color: Colors.orange),
                            Area(color: Colors.blue),
                            Area(color: Colors.pink),
                          ])),
                      Expanded(
                          flex: 2,
                          child: Column(children: [
                            Area(flex: 3, color: Colors.blue.shade400),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Area(color: Colors.teal.shade100),
                                  const Area(color: Colors.yellow)
                                ],
                              ),
                            )
                          ])),
                    ],
                  ),
                ),
                const Area(flex: 3, color: Colors.black),
                const Area(flex: 3, color: Colors.yellow),
                const Area(flex: 3),
              ],
            ),
          ),
          const Area(
            flex: 2,
            color: Colors.pink,
            margin: EdgeInsets.only(right: 10),
          ),
          const Area(flex: 1, color: Colors.pink),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
