import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';

class SenhanovaPage extends StatefulWidget {
  const SenhanovaPage({super.key});

  @override
  State<SenhanovaPage> createState() => _SenhanovaPageState();
}

class _SenhanovaPageState extends State<SenhanovaPage> {
  final TextEditingController _senha = TextEditingController();
  final TextEditingController _senhaNovamente = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 95),
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
                'Confirme a senha nova!',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(48, 219, 91, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputBar(
                  text: 'Senha',
                  largura: 370,
                  icon1: Icons.lock,
                  controller: _senha,
                  obscure: true,
                  showEyeIcon: true,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputBar(
                  text: 'Digite sua senha nova',
                  largura: 370,
                  icon1: Icons.lock,
                  controller: _senhaNovamente,
                  obscure: true,
                  showEyeIcon: true,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              CustomButton(
                text: "Cadastrar",
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
