import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/customButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';
import 'package:hortiprice/service/auth_service.dart';
import 'package:provider/provider.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController _email = TextEditingController();
    final TextEditingController _senha = TextEditingController();
    final TextEditingController _nome = TextEditingController();

    registrar() async {
      try{
        await context.read<AuthService>().login(_email.text, _senha.text);
      }on AuthException catch(e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
      }
    }

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
                'Crie sua conta para começar!',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(48, 219, 91, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
            SizedBox(height: 25),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                      Container(
                        height: 55,
                        width: 370,
                        child: TextFormField(
                          controller: _email,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(174, 174, 178, 1.00),
                          ),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(174, 174, 178, 1.00),
                            ),
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: Color.fromRGBO(174, 174, 178, 1.00),
                            ),
                            fillColor: Color.fromRGBO(235, 235, 240, 1),
                            filled: true,
                            focusedBorder: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Informe Seu email corretamente!";
                            } else {
                              return null;
                            }
                          },
                        ),
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
                ],
              ),
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
