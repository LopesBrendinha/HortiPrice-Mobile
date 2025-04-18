import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentPage;

  CustomNavBar({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  void _handleIndexChanged(BuildContext context, int index) {
    if (index == currentPage) return;

    switch (index) {
      case 0:
        Navigator.popAndPushNamed(context, "/home");
        break;
      case 1:
        Navigator.popAndPushNamed(context, "/cadastros");
        break;
      case 2:
        Navigator.popAndPushNamed(context, "/simulacoes");
        break;
      case 3:
        Navigator.popAndPushNamed(context, "/relatorios");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 99, 43, 0.75),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        height: 70, // Changed from 65 to 70
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: DotNavigationBar(
            currentIndex: currentPage,
            onTap: (index) => _handleIndexChanged(context, index),
            marginR: EdgeInsets.zero,
            paddingR: const EdgeInsets.symmetric(
                horizontal: 9, vertical: 0), // Added vertical padding
            backgroundColor: Colors.transparent,
            dotIndicatorColor: Color.fromRGBO(48, 219, 91, 1),
            unselectedItemColor: Colors
                .grey[300], // Added unselected color for better visibility
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: Color.fromRGBO(48, 219, 91, 1),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.app_registration_rounded),
                selectedColor: Color.fromRGBO(48, 219, 91, 1),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.computer),
                selectedColor: Color.fromRGBO(48, 219, 91, 1),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.file_copy),
                selectedColor: Color.fromRGBO(48, 219, 91, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
