import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/customButton.dart';
import 'package:hortiprice/pages/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Image.asset(
              "./assets/imgs/logo.png",
              fit: BoxFit.contain,
              height: 240 * 1.4,
              width: 290 * 1.4,
            ),
          ]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: CustomButton(
                text: "Vamos lá!",
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/explicacao");
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
