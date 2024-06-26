import 'dart:ui';
import 'package:car_marketplace/screens/car_store_screen.dart';
import 'package:car_marketplace/screens/profile_screen.dart';
import 'package:car_marketplace/screens/search_screen.dart';
import 'package:car_marketplace/widgets/car_page.dart';
import 'package:car_marketplace/widgets/single_car.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'widgets/colors.dart';

/*
TODO:
  - ListPage filter chips
  - Filter Page
  - Search Page
  - Car Page Details
  - CarData
 */


void main() {
  runApp(const CarApp());
}

class CarApp extends StatefulWidget {
  const CarApp({Key? key}) : super(key: key);

  @override
  State<CarApp> createState() => _CarAppState();
}

int _selectedIndex = 0;

List _listPages = <Widget>[
  const CarStoreScreen(),
  // const SearchScreen(),
  const ProfileScreen(),
];

class _CarAppState extends State<CarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: AppColor.backgroundColor,
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(
            18.0,
          ),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(
            //   50.0,
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 1.0,
                blurRadius: 8.0,
                offset: const Offset(
                  1,
                  1,
                ),
              ),
            ],
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: GNav(
              gap: 13.0,
              backgroundColor: Colors.white,
              tabBorderRadius: 40.0,
              // tabBackgroundColor: AppColor.pinkAccentColor,
              // activeColor: AppColor.redCircleColor,
              color: Colors.black.withOpacity(0.55),
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home_filled,
                  text: "Home",
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                ),
                GButton(
                  icon: FontAwesomeIcons.magnifyingGlass,
                  text: "Search",
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                ),
                GButton(
                  icon: FontAwesomeIcons.circleUser,
                  text: "Profile",
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: _listPages.elementAt(_selectedIndex),
      ),
    );
  }
}
