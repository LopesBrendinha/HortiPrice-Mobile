import 'package:flutter/material.dart';
import 'package:hortiprice/pages/dashboard/cadastros/cadastros_page.dart';
import 'package:hortiprice/pages/dashboard/home/home_page.dart';
import 'package:hortiprice/pages/dashboard/relatorios/relatorios_page.dart';
import 'package:hortiprice/pages/dashboard/simulacoes/simulacoes_page.dart';
import 'package:hortiprice/pages/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';
import 'package:hortiprice/pages/onboarding/inicial/inicial_page.dart';
import 'package:hortiprice/pages/register/cadastroArea/cadastroArea_page.dart';
import 'package:hortiprice/pages/register/cadastroAtividade/cadastroAtividade_page.dart';
import 'package:hortiprice/pages/register/cadastroCategoria/cadastroCategoria_page.dart';
import 'package:hortiprice/pages/register/cadastroComponente/cadastroComponente_page.dart';
import 'package:hortiprice/pages/register/cadastroCusto/cadastroCusto_page.dart';
import 'package:hortiprice/pages/register/cadastroDirecionador/cadastroDirecionador_page.dart';
import 'package:hortiprice/pages/register/cadastroProdutividade/cadastroProdutividade_page.dart';
import 'package:hortiprice/pages/register/cadastroSubcategoria/cadastroSubcategoria_page.dart';
import 'package:hortiprice/pages/register/cadastroTipo/cadastroTipo_page.dart';
import 'package:hortiprice/pages/register/cadastroUnidade/cadastroUnidade_page.dart';
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
      home: HomePage(),
      initialRoute: "/",
      routes: {
        "/explicacao": (context) => ExplicacaoPage(),
        "/inicial": (context) => InicialPage(),
        "/login": (context) => LoginPage(),
        "/cadastro": (context) => CadastroPage(),
        "/recuperarSenha": (context) => RecuperarsenhaPage(),
        "/senhaNova": (context) => SenhanovaPage(),
        "/home": (context) => HomePage(),
        "/simulacoes": (context) => SimulacoesPage(),
        "/cadastros": (context) => CadastrosPage(),
        "/relatorios": (context) => RelatoriosPage(),
        "/cadastroArea": (context) => CadastroAreaPage(),
        "/cadastroAtividade": (context) => CadastroAtividadePage(),
        "/cadastroCategoria": (context) => CadastroCategoriaPage(),
        "/cadastroComponente": (context) => CadastroComponentePage(),
        "/cadastroCusto": (context) => CadastroCustoPage(),
        "/cadastroDirecionador": (context) => CadastroDirecionadorPage(),
        "/cadastroProdutividade": (context) => CadastroProdutividadePage(),
        "/cadastroSubcategoria": (context) => CadastroSubcategoriaPage(),
        "/cadastroTipo": (context) => CadastroTipoPage(),
        "/cadastroUnidade": (context) => CadastroUnidadePage(),
      },
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
