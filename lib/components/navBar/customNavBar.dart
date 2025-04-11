import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentPage; // Recebe o número da página atual

  CustomNavBar({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  void _handleIndexChanged(BuildContext context, int index) {
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
    return CrystalNavigationBar(
      currentIndex: currentPage,
      unselectedItemColor: Colors.white70,
      backgroundColor: Color.fromRGBO(25, 99, 43, 0.70),
      outlineBorderColor: Colors.white,
      onTap: (index) => _handleIndexChanged(context, index),
      items: [
        /// Home
        CrystalNavigationBarItem(
          icon: Icons.home,
          selectedColor: Color.fromRGBO(48, 219, 91, 1),
        ),

        /// Simulações
        CrystalNavigationBarItem(
          icon: Icons.calculate_outlined,
          selectedColor: Color.fromRGBO(48, 219, 91, 1),
        ),

        /// Cadastros
        CrystalNavigationBarItem(
          icon: Icons.library_add,
          selectedColor: Color.fromRGBO(48, 219, 91, 1),
        ),

        /// Relatórios
        CrystalNavigationBarItem(
          icon: Icons.file_copy_outlined,
          selectedColor: Color.fromRGBO(48, 219, 91, 1),
        ),
      ],
    );
  }
}
