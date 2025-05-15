import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/CustomButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';
import 'package:hortiprice/service/auth_service.dart';
import 'package:provider/provider.dart';
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
    final formKey = GlobalKey<FormState>();
    final TextEditingController _email = TextEditingController();
    final TextEditingController _senha = TextEditingController();

    login( ) async{
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
            SizedBox(height: 110),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Image.asset(
                "./assets/imgs/logo.png",
                fit: BoxFit.contain,
                height: 240 * 1.1,
                width: 290 * 1.1,
              ),
            ]),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                            prefixIcon:Icon(
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
                          validator: (value){
                            if(value!.isEmpty){
                              return "Informe Seu email corretamente!";
                            }else{
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
                          if(formKey.currentState!.validate()){
                            login();
                          }
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
                              color: const Color.fromRGBO(235, 235, 240, 1),
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
