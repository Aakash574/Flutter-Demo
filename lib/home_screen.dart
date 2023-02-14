import 'package:flutter/material.dart';

import 'const.dart';
import 'home_tabs/calendar_tab.dart';
import 'home_tabs/discover_tab.dart';
import 'home_tabs/home_tab.dart';
import 'home_tabs/message_tab.dart';
import 'home_tabs/profile_tab.dart';

class UIWork extends StatefulWidget {
  UIWork({Key? key}) : super(key: key);

  @override
  State<UIWork> createState() => _UIWorkState();
}

class _UIWorkState extends State<UIWork> {
  int _isActiveIndex = 0;

  setActiveIndex(int setActiveIndex) {
    setState(() {
      _isActiveIndex = setActiveIndex;
    });
  }

  Widget getActiveTabWidget() {
    switch (_isActiveIndex) {
      case 0:
        return const CalendarTab();
      case 1:
        return const DiscoverTab();
      case 2:
        return const HomeTab();
      case 3:
        return const MessageTab();
      case 4:
        return const ProfileTab();
      default:
        return const CalendarTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      // body: giveMeRightTab(),
      body: getActiveTabWidget(),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(20, 108, 108, 108),
              offset: Offset(
                1.0,
                0.0,
              ),
              blurRadius: 8.0,
              spreadRadius: 4.0,
            ), //BoxShadow
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBarIteam(
              isActive: _isActiveIndex == 0 ? true : false,
              onTap: () {
                setActiveIndex(0);
              },
              iconData: Icons.calendar_month_rounded,
            ),
            NavBarIteam(
              isActive: _isActiveIndex == 1 ? true : false,
              onTap: () {
                setActiveIndex(1);
              },
              iconData: Icons.explore_rounded,
            ),
            NavBarIteam(
              isActive: _isActiveIndex == 2 ? true : false,
              onTap: () {
                setActiveIndex(2);
              },
              iconData: Icons.home_rounded,
            ),
            NavBarIteam(
              isActive: _isActiveIndex == 3 ? true : false,
              onTap: () {
                setActiveIndex(3);
              },
              iconData: Icons.chat_rounded,
            ),
            NavBarIteam(
              isActive: _isActiveIndex == 4 ? true : false,
              onTap: () {
                setActiveIndex(4);
              },
              iconData: Icons.person_rounded,
            ),
          ],
        ),
      ),
      // body: ProfilePicture(),
    );
  }
}

class NavBarIteam extends StatefulWidget {
  NavBarIteam({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.iconData,
  });
  final bool isActive;

  final IconData iconData;
  final VoidCallback onTap;

  @override
  State<NavBarIteam> createState() => _NavBarIteamState();
}

class _NavBarIteamState extends State<NavBarIteam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black26,
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.iconData,
              color:
                  widget.isActive ? MyColors.activeGreen : Colors.grey.shade400,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
