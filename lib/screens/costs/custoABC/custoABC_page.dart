import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';
import 'package:hortipricemobile/components/inputSelectBar/customInputSelectBar.dart';
import 'package:quickalert/quickalert.dart';

class CustoabcPage extends StatefulWidget {
  const CustoabcPage({super.key});

  @override
  State<CustoabcPage> createState() => _CustoabcPageState();
}

class _CustoabcPageState extends State<CustoabcPage> {
  final TextEditingController _margem = TextEditingController();

  final List<String> produtoList = ['Opção 1', 'Opção 2', 'Opção 3'];
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

  String? produto;
  String? mes;
  String? ano;

  @override
  void initState() {
    super.initState();
    produto = produtoList.first;
    mes = mesList.first;
    ano = anoList.first;
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
                Navigator.popAndPushNamed(context, "/simulacoes");
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
                  title: 'Custeio ABC',
                  text:
                      'O Custeio Baseado em Atividades (ABC) identifica atividades e direcionadores para alocar custos de forma mais precisa. Para simular, acesse Simulações > Custeio ABC e informe tipo, produtividade e margem de contribuição.',
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
            image: AssetImage("assets/imgs/fundo_tela 3.png"),
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
                    Text("Custeio ABC",
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
                CustomInputSelectBar(
                  text: 'Produto',
                  largura: 370,
                  selectedValue: produto,
                  items: ['Opção 1', 'Opção 2', 'Opção 3'],
                  onChanged: (newValue) {
                    setState(() {
                      produto = newValue;
                    });
                  },
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
                CustomInputBar(
                  text: 'Margem de Contribuição (%)',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _margem,
                  obscure: false,
                  showEyeIcon: false,
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(text: "Calcular", onPressed: () {})
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
