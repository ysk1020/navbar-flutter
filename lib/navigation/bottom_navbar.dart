import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:navbar/nav_state/nav_notifier.dart';

import 'package:navbar/screens/homepage.dart';
import 'package:navbar/screens/profilepage.dart';
import 'package:navbar/screens/searchpage.dart';
import 'package:navbar/screens/addpage.dart';

class BottomNavBar extends ConsumerStatefulWidget {
  const BottomNavBar({super.key});

  @override
  ConsumerState<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends ConsumerState<BottomNavBar> {
  final List _widgetOptions = [
    HomePage(),
    SearchPage(),
    AddPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var navIndex = ref.watch(navProvider);
    return Scaffold(
      body: Center(
        child: _widgetOptions[navIndex.index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 25),
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: navIndex.index,
        onTap: (value) {
          ref.read(navProvider.notifier).onIndexChanged(value);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: navIndex.index == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: navIndex.index == 1
                ? Icon(Icons.search)
                : Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: navIndex.index == 2
                ? Icon(Icons.add_box_rounded)
                : Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: navIndex.index == 3
                ? Icon(Icons.person_2)
                : Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
