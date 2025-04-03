import 'package:flutter/material.dart';
import 'package:hortiprice/pages/dashboard/home/home_page.dart';
import 'package:hortiprice/pages/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';
import 'package:hortiprice/pages/onboarding/inicial/inicial_page.dart';
import 'package:hortiprice/pages/signUp&login/cadastro/cadastro_page.dart';
import 'package:hortiprice/pages/signUp&login/login/login_page.dart';
import 'package:hortiprice/pages/signUp&login/recuperarSenha/recuperarSenha_page.dart';
import 'package:hortiprice/pages/signUp&login/senhaNova/senhaNova_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      //InicialPage(),
      initialRoute: "/",
      routes: {
        "/explicacao": (context) => ExplicacaoPage(),
        "/inicial": (context) => InicialPage(),
        "/login": (context) => LoginPage(),
        "/cadastro": (context) => CadastroPage(),
        "/recuperarSenha": (context) => RecuperarsenhaPage(),
        "/senhaNova": (context) => SenhanovaPage(),
        "/home": (context) => HomePage(),
      },
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
