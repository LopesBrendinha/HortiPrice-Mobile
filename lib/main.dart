import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hortiprice/pages/costs/custoABC/custoABC_page.dart';
import 'package:hortiprice/pages/costs/custoPorAbsorcao/custoPorAbsorcao_page.dart';
import 'package:hortiprice/pages/costs/custoVariavel/custoVariavel_page.dart';
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
import 'package:hortiprice/pages/reports/relatorioCustoABC/relatorioCustoABC_page.dart';
import 'package:hortiprice/pages/reports/relatorioCustoPorAbsor%C3%A7%C3%A3o/relatorioCustoPorAbsor%C3%A7%C3%A3o.dart';
import 'package:hortiprice/pages/reports/relatorioCustoVariavel/relatorioCustoVariavel_page.dart';
import 'package:hortiprice/pages/reports/relatorioTotaisCusto/relatorioTotaisCusto_page.dart';
import 'package:hortiprice/pages/signUp&login/cadastro/cadastro_page.dart';
import 'package:hortiprice/pages/signUp&login/login/login_page.dart';
import 'package:hortiprice/pages/signUp&login/recuperarSenha/recuperarSenha_page.dart';
import 'package:hortiprice/pages/signUp&login/senhaNova/senhaNova_page.dart';
import 'package:hortiprice/service/auth_service.dart';
import 'package:provider/provider.dart';

void main() async{
  //await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicialPage(),
      initialRoute: "/login",
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
        "/simulacaoCustoABC": (context) => CustoabcPage(),
        "/simulacaoCustoPorAbsorcao": (context) => CustoporabsorcaoPage(),
        "/simulacaoCustoVariavel": (context) => CustovariavelPage(),
        "/relatorioCustoABC": (context) => RelatoriocustoabcPage(),
        "/relatorioCustoPorAbsorcao": (context) => Relatoriocustoporabsorcao(),
        "/relatorioCustoVariavel": (context) => RelatoriocustovariavelPage(),
        "/relatorioTotaisCustos": (context) => RelatoriototaiscustoPage()
      },
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
