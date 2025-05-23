import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hortipricemobile/screens/costs/custoABC/custoABC_page.dart';
import 'package:hortipricemobile/screens/costs/custoPorAbsorcao/custoPorAbsorcao_page.dart';
import 'package:hortipricemobile/screens/costs/custoVariavel/custoVariavel_page.dart';
import 'package:hortipricemobile/screens/dashboard/cadastros/cadastros_page.dart';
import 'package:hortipricemobile/screens/dashboard/home/home_page.dart';
import 'package:hortipricemobile/screens/dashboard/relatorios/relatorios_page.dart';
import 'package:hortipricemobile/screens/dashboard/simulacoes/simulacoes_page.dart';
import 'package:hortipricemobile/screens/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';
import 'package:hortipricemobile/screens/onboarding/inicial/inicial_page.dart';
import 'package:hortipricemobile/screens/register/cadastroArea/cadastroArea_page.dart';
import 'package:hortipricemobile/screens/register/cadastroAtividade/cadastroAtividade_page.dart';
import 'package:hortipricemobile/screens/register/cadastroCategoria/cadastroCategoria_page.dart';
import 'package:hortipricemobile/screens/register/cadastroComponente/cadastroComponente_page.dart';
import 'package:hortipricemobile/screens/register/cadastroCusto/cadastroCusto_page.dart';
import 'package:hortipricemobile/screens/register/cadastroDirecionador/cadastroDirecionador_page.dart';
import 'package:hortipricemobile/screens/register/cadastroProdutividade/cadastroProdutividade_page.dart';
import 'package:hortipricemobile/screens/register/cadastroSubcategoria/cadastroSubcategoria_page.dart';
import 'package:hortipricemobile/screens/register/cadastroTipo/cadastroTipo_page.dart';
import 'package:hortipricemobile/screens/register/cadastroUnidade/cadastroUnidade_page.dart';
import 'package:hortipricemobile/screens/reports/relatorioCustoABC/relatorioCustoABC_page.dart';
import 'package:hortipricemobile/screens/reports/relatorioCustoPorAbsor%C3%A7%C3%A3o/relatorioCustoPorAbsor%C3%A7%C3%A3o.dart';
import 'package:hortipricemobile/screens/reports/relatorioCustoVariavel/relatorioCustoVariavel_page.dart';
import 'package:hortipricemobile/screens/reports/relatorioTotaisCusto/relatorioTotaisCusto_page.dart';
import 'package:hortipricemobile/screens/signUp&login/cadastro/cadastro_page.dart';
import 'package:hortipricemobile/screens/signUp&login/login/login_page.dart';
import 'package:hortipricemobile/screens/signUp&login/recuperarSenha/recuperarSenha_page.dart';
import 'package:hortipricemobile/screens/signUp&login/senhaNova/senhaNova_page.dart';
import 'screens/prontuario_list_screen.dart'; // Tela principal com lista de prontuários
import 'firebase_options.dart'; //

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform, 
  );
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicialPage(),
      initialRoute: "/inicial",
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

