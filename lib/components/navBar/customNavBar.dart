import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentPage;

  CustomNavBar({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotCurvedBottomNav(
      indicatorColor: Color.fromRGBO(36, 138, 92, 1),
      backgroundColor: Color.fromRGBO(25, 99, 43, 0.70),
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.ease,
      selectedIndex: currentPage,
      indicatorSize: 5,
      borderRadius: 20,
      height: 65,
      onTap: (index) {
        print('currentPage: $currentPage');
        if (index == 0) {
          Navigator.popAndPushNamed(context, "/home");
        }
        if (index == 1) {
          Navigator.popAndPushNamed(context, "/simulacoes");
        }
        if (index == 2) {
          Navigator.popAndPushNamed(context, "/cadastros");
        }
        if (index == 3) {
          Navigator.popAndPushNamed(context, "/relatorios");
        }
      },
      items: [
        Icon(
          Icons.home,
          color: currentPage == 0
              ? Color.fromRGBO(48, 219, 91, 1)
              : Color.fromRGBO(242, 242, 247, 1),
        ),
        Icon(
          Icons.calculate_outlined,
          color: currentPage == 1
              ? Color.fromRGBO(48, 219, 91, 1)
              : Color.fromRGBO(242, 242, 247, 1),
        ),
        Icon(
          Icons.library_add,
          color: currentPage == 2
              ? Color.fromRGBO(48, 219, 91, 1)
              : Color.fromRGBO(242, 242, 247, 1),
        ),
        Icon(
          Icons.file_copy_outlined,
          color: currentPage == 3
              ? Color.fromRGBO(48, 219, 91, 1)
              : Color.fromRGBO(242, 242, 247, 1),
        ),
      ],
    );
  }
}
