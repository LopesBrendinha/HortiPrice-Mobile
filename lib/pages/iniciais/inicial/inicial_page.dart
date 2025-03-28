import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/CustomButton.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 240, 100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Image.asset(
              "./assets/imgs/logo.png",
              fit: BoxFit.contain,
              height: 240,
              width: 290,
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            CustomButton(
              text: "Vamos lá!",
              onPressed: () {
                print('Botão 1 pressionado!');
              },
            ),
          ]),
        ],
      ),
    );
  }
}
