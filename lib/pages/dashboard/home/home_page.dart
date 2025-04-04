import 'package:flutter/material.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(242, 242, 247, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                './assets/imgs/logout.png',
              ),
              SizedBox(width: 90),
              Image.asset(
                './assets/imgs/logo.png',
                fit: BoxFit.contain,
                height: 240 * 0.45,
                width: 290 * 0.45,
              ),
              SizedBox(width: 120),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[],
          ),
        ));
  }
}
