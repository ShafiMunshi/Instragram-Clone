import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/activity/activity_page.dart';
import 'package:flutter_ui_1/feature/presentation/page/home/home_screen.dart';
import 'package:flutter_ui_1/feature/presentation/page/post/upload_post.dart';
import 'package:flutter_ui_1/feature/presentation/page/profile/profile_sceen.dart';
import 'package:flutter_ui_1/feature/presentation/page/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex=0;
  late PageController pageController;

  @override
  void initState() {
    pageController=PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index){
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        onTap: navigationTapped,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: primaryColor,)),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: primaryColor,)),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded,color: primaryColor,)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,color: primaryColor,)),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: primaryColor,)),
      ]),

      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(),
          SearchScreen(),
          UploadPostScreen(),
          ActivityScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}