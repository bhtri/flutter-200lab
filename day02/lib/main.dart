import 'package:day02/constant/app_colors.dart';
import 'package:day02/home.dart';
import 'package:flutter/material.dart';

void main() {
  AppColors.kBarsLight;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Day 02',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const HomePage(),
  ));
}
