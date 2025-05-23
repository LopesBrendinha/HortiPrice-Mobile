import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';
import 'package:hortipricemobile/components/inputSelectBar/customInputSelectBar.dart';
import 'package:quickalert/quickalert.dart';

class CadastroProdutividadePage extends StatefulWidget {
  const CadastroProdutividadePage({super.key});

  @override
  State<CadastroProdutividadePage> createState() =>
      _CadastroProdutividadePageState();
}

class _CadastroProdutividadePageState extends State<CadastroProdutividadePage> {
  final TextEditingController _valor = TextEditingController();

  final List<String> tipoList = ['Opção 1', 'Opção 2', 'Opção 3'];
  final List<String> anoList = [
    '2000',
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2024",
    "2025"
  ];
  final List<String> mesList = [
    'Janeiro',
    'Fevereiro',
    'Março',
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  String? tipo;
  String? ano;
  String? mes;

  @override
  void initState() {
    super.initState();
    tipo = tipoList.first;
    ano = anoList.first;
    mes = mesList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, "/cadastros");
              },
              child: Image.asset(
                "./assets/imgs/icon12.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 290),
            GestureDetector(
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.info,
                  title: 'O que é a Produtividade?',
                  text:
                      'Descrição das informações relacionadas ao rendimento mensal de determinado cultivo.',
                );
              },
              child: Image.asset(
                "./assets/imgs/icon11.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/fundo_tela 1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/home");
                  },
                  child: Image.asset(
                    './assets/imgs/logo.png',
                    fit: BoxFit.contain,
                    height: 240 * 1.1,
                    width: 290 * 1.1,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cadastro de \nprodutividade",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(36, 138, 61, 1),
                            height: 0.8)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputBar(
                  text: 'Valor',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _valor,
                  obscure: false,
                  showEyeIcon: false,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    CustomInputSelectBar(
                      text: 'Ano',
                      largura: 180,
                      selectedValue: ano,
                      items: [
                        '2000',
                        "2001",
                        "2002",
                        "2003",
                        "2004",
                        "2005",
                        "2006",
                        "2024",
                        "2025"
                      ],
                      onChanged: (newValue) {
                        setState(() {
                          ano = newValue;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    CustomInputSelectBar(
                      text: 'Mês',
                      largura: 180,
                      selectedValue: mes,
                      items: [
                        'Janeiro',
                        'Fevereiro',
                        'Março',
                        "Abril",
                        "Maio",
                        "Junho",
                        "Julho",
                        'Agosto',
                        'Setembro',
                        'Outubro',
                        'Novembro',
                        'Dezembro'
                      ],
                      onChanged: (newValue) {
                        setState(() {
                          mes = newValue;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputSelectBar(
                  text: 'Tipo',
                  largura: 370,
                  selectedValue: tipo,
                  items: ['Opção 1', 'Opção 2', 'Opção 3'],
                  onChanged: (newValue) {
                    setState(() {
                      tipo = newValue;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(text: "Inserir", onPressed: () {})
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
