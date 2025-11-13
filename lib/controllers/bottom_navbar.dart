import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF9C4A7F),
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Get.offAllNamed('/home');
            break;
          case 1:
            Get.toNamed('/favorites');
            break;
          case 2:
            Get.toNamed('/appointments');
            break;
          case 3:
            Get.toNamed('/chat');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: "Appointments",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      ],
    );
  }
}
