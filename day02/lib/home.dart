import 'package:day02/components/primary_avatar.dart';
import 'package:day02/components/primary_button.dart';
import 'package:day02/components/primary_chat_card.dart';
import 'package:day02/components/primary_textbox.dart';
import 'package:day02/constant/app_assets.dart';
import 'package:day02/constant/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                PrimaryAvaTar(
                  imgPath: AppAssets.kImagesUser4Png,
                  isActive: true,
                  numberMess: 3,
                ),
                PrimaryAvaTar(
                  imgPath: AppAssets.kImagesUser5Png,
                  isActive: false,
                  numberMess: -1,
                ),
              ],
            ),
            const PrimaryChatCard(
              avatar: PrimaryAvaTar(
                imgPath: AppAssets.kImagesUser4Png,
                isActive: true,
                numberMess: 3,
              ),
              name: 'Herman Pope',
              lastMessage: 'What kind of musicdo you like?',
              time: '04:04 AM',
            ),
            const PrimaryChatCard(
              avatar: PrimaryAvaTar(
                imgPath: AppAssets.kImagesUser1Png,
                isActive: false,
                numberMess: 1,
              ),
              name: 'Ada Reyes',
              lastMessage: 'Sounds good to me!',
              time: '11:33 PM',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kPrimaryColor1,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.kDestructive,
        unselectedItemColor: AppColors.kGray1,
        selectedFontSize: 12,
        onTap: (value) => setState(() {
          _selectedIndex = value;
        }),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.kIcons2xTabbarHomePng),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.kIcons2xTabbarStreamPng),
            ),
            label: 'Streams',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.kIcons2xTabbarMessagePng),
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.kIcons2xTabbarNotificationsPng),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.kIcons2xTabbarNotificationsCopy3Png),
            ),
            label: 'Profiles',
          ),
        ],
      ),
    );
  }
}
