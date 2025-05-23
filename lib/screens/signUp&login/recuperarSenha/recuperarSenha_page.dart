import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';

class RecuperarsenhaPage extends StatefulWidget {
  const RecuperarsenhaPage({super.key});

  @override
  State<RecuperarsenhaPage> createState() => _RecuperarsenhaPageState();
}

class _RecuperarsenhaPageState extends State<RecuperarsenhaPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 140),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/login");
                },
                child: Image.asset(
                  "./assets/imgs/logo.png",
                  fit: BoxFit.contain,
                  height: 240 * 1.1,
                  width: 290 * 1.1,
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text(
                'Digite seu email para troca de senha',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(48, 219, 91, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputBar(
                  text: 'Email',
                  largura: 370,
                  icon1: Icons.email_rounded,
                  controller: _email,
                  obscure: false,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              CustomButton(
                text: "Enviar",
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/login");
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
