import 'package:day02/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Day 02',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const HomePage(),
  ));
}
