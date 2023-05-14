import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      backgroundColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Home'),
      ],
    );
  }
}
