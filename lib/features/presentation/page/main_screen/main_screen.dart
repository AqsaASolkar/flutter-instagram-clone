import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/consts.dart';
import 'package:fluttericon/typicons_icons.dart';

import '../Home/home_page.dart';
import '../activity/activity_page.dart';
import '../post/upload_post_page.dart';
import '../profile/profile_page.dart';
import '../search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: primaryColor), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: primaryColor), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: primaryColor), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Typicons.heart_filled, color: primaryColor),
              label: ""),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.supervised_user_circle_sharp, color: primaryColor),
              label: ""),
        ],
        onTap: navigationTapped,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomePage(),
          SearchPage(),
          UploadPostPage(),
          ActivityPage(),
          ProfilePage()
          // Center(
          //     child: Text(
          //   'Home',
          //   style: TextStyle(color: primaryColor),
          // )),
          // Center(child: Text('Search', style: TextStyle(color: primaryColor))),
          // Center(child: Text('Post', style: TextStyle(color: primaryColor))),
          // Center(
          //     child: Text('Activity', style: TextStyle(color: primaryColor))),
          // Center(child: Text('Profile', style: TextStyle(color: primaryColor))),
        ],
      ),
    );
  }
}
