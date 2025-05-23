import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputSelectBar/customInputSelectBar.dart';

class RelatoriototaiscustoPage extends StatefulWidget {
  const RelatoriototaiscustoPage({super.key});

  @override
  State<RelatoriototaiscustoPage> createState() =>
      _RelatoriototaiscustoPageState();
}

class _RelatoriototaiscustoPageState extends State<RelatoriototaiscustoPage> {
  @override
  Widget build(BuildContext context) {
    String? produto = 'Opção 1';

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, "/relatorios");
              },
              child: Image.asset(
                "./assets/imgs/icon12.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 290),
            GestureDetector(
              onTap: () {},
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
            image: AssetImage("assets/imgs/fundo_tela 2.png"),
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
                    Text("Relatorio Totais \nCusto",
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
            SizedBox(
              height: 50,
            ),
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
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(text: "Consultar", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
