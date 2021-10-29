import 'package:day02/components/primary_button.dart';
import 'package:day02/components/primary_textbox.dart';
import 'package:day02/constant/app_colors.dart';
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
      backgroundColor: AppColors.kPrimaryColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PrimaryTextBox(hintText: 'Username'),
            const SizedBox(height: 10),
            PrimaryTextBox(
              icon: Icon(
                Icons.search,
                color: AppColors.kWhite,
              ),
              hintText: 'Search',
            ),
            const SizedBox(height: 10),
            PrimaryButton(
              text: 'SEND',
              textStyle: TextStyle(color: AppColors.kWhite),
              press: () {},
              color: AppColors.kPink,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120,
              height: 30,
              child: PrimaryButton(
                text: 'FOLLOW',
                textStyle: TextStyle(color: AppColors.kWhite),
                press: () {},
                color: AppColors.kPink,
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kPrimaryColor1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.stream), label: 'Streams'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.portable_wifi_off), label: 'Profiles'),
        ],
      ),
    );
  }
}
