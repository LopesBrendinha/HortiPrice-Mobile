import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';
import 'package:quickalert/quickalert.dart';

class CadastroCustoPage extends StatelessWidget {
  const CadastroCustoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _custo = TextEditingController();
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
                  title: 'O que é o Custo?',
                  text:
                      'Descrição dos grupos de custeio (ex.: Despesas de Custeio da Lavoura, Despesas Financeiras, Despesas Pós-colheita, etc.).',
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
                    Text("Cadastre novos \ncustos",
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
                CustomInputBar(
                  text: 'Custo',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _custo,
                  obscure: false,
                  showEyeIcon: false,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(text: "Inserir", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
