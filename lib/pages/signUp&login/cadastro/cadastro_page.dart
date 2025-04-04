import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/customButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _senha = TextEditingController();
    final TextEditingController _nome = TextEditingController();

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
                  Navigator.pushNamed(context, "/login");
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
                'Crie sua conta para começar!',
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
                  text: 'Nome Completo',
                  largura: 370,
                  icon1: Icons.person,
                  controller: _nome,
                  obscure: false,
                ),
              ],
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              CustomButton(
                text: "Cadastrar",
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
