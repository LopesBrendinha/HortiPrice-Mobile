import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentPage; // Recebe o número da página atual

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
        Navigator.popAndPushNamed(context, "/simulacoes");
        break;
      case 2:
        Navigator.popAndPushNamed(context, "/cadastros");
        break;
      case 3:
        Navigator.popAndPushNamed(context, "/relatorios");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: DotNavigationBar(
            currentIndex: currentPage,
            onTap: (index) => _handleIndexChanged(context, index),
            marginR: const EdgeInsets.symmetric(horizontal: 0),
            paddingR: const EdgeInsets.symmetric(vertical: 10),
            backgroundColor: Colors.transparent,
            dotIndicatorColor: Colors.black,
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: Colors.purple,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                selectedColor: Colors.pink,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.search),
                selectedColor: Colors.orange,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.person),
                selectedColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
