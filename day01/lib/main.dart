import 'package:day01/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Day 01',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const HomePage(),
  ));
}
