import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/customButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';
import 'package:hortiprice/pages/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _senha = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
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
          SizedBox(height: 16),
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
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Texto pressionado!')),
                  );
                },
                child: Text(
                  'Esqueci Minha Senha',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(48, 219, 91, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            CustomButton(
              text: "Entrar",
              onPressed: () {
                Navigator.popAndPushNamed(context, "/home");
              },
            ),
          ]),
          SizedBox(height: 25),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            CustomButton(
              text: "Criar Conta",
              onPressed: () {
                Navigator.popAndPushNamed(context, "/cadastrar");
              },
            ),
          ]),
        ],
      ),
    );
  }
}
