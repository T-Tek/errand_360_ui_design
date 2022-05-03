// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:errand360_ui/pages/edit_job.dart';
import 'package:errand360_ui/pages/search_page.dart';
import 'package:errand360_ui/pages/view_profile.dart';
import 'package:errand360_ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<Widget> pages = [
    WelcomePage(),
    SearchPage(),
    ViewProfile(),
    EditJob()
  ];

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pages[currentTabIndex],
      body:Center(
        child: pages.elementAt(currentTabIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
           tabBorderRadius: 8,
            activeColor: Colors.purple,
            color: Colors.grey,
            tabBackgroundColor: Colors.purple.shade100,
            gap: 5,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.sort,
                text: 'Applicants',
              ),
              GButton(
                icon: Icons.message,
                text: 'Messages',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
              selectedIndex: currentTabIndex,
              onTabChange: (index) {
                setState(() {
                  currentTabIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

