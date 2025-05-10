import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/CustomButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 110),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Image.asset(
                "./assets/imgs/logo.png",
                fit: BoxFit.contain,
                height: 240 * 1.1,
                width: 290 * 1.1,
              ),
            ]),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/recuperarSenha");
                  },
                  child: Text(
                    'Esqueci Minha Senha',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(48, 219, 91, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomButton(
                        text: "Entrar",
                        onPressed: () {
                          Navigator.popAndPushNamed(context, "/home");
                        },
                        width: 157,
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, "/cadastro");
                        },
                        child: Container(
                          width: 157,
                          height: 55,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(48, 219, 91, 1),
                                Color.fromRGBO(36, 138, 92, 1)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(3), 
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(
                                  235, 235, 240, 1), 
                              borderRadius: BorderRadius.circular(17),
                            ),
                            alignment: Alignment.center,
                            child: ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  Color.fromRGBO(48, 219, 91, 1),
                                  Color.fromRGBO(36, 138, 92, 1),
                                ],
                              ).createShader(bounds),
                              blendMode: BlendMode.srcIn,
                              child: const Text(
                                'Cadastrar',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins-Bold',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ou através das redes sociais',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(48, 219, 91, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SignInButton.mini(
                        buttonType: ButtonType.google,
                        onPressed: () {},
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SignInButton.mini(
                        buttonType: ButtonType.facebook,
                        onPressed: () {},
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
