import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  const BottomNavBar({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.graduationCap,
              size: 20,
            ),
            label: "Topics"),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bolt,
              size: 20,
            ),
            label: "About"),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.circleUser,
              size: 20,
            ),
            label: "Profile"),
      ],
      fixedColor: Colors.white,
      onTap: (int i) {
        switch (i) {
          case 0:
            Navigator.pushReplacementNamed(context, "/topics");
            break;
          case 1:
            Navigator.pushReplacementNamed(context, "/about");
            break;
          case 2:
            Navigator.pushReplacementNamed(context, "/profile");
            break;
          default:
        }
      },
    );
  }
}
