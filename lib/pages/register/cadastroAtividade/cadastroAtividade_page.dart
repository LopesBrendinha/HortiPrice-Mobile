import 'package:flutter/material.dart';
import 'package:hortiprice/components/button/customButton.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';
import 'package:hortiprice/components/inputSelectBar/customInputSelectBar.dart';

class CadastroAtividadePage extends StatefulWidget {
  const CadastroAtividadePage({super.key});

  @override
  State<CadastroAtividadePage> createState() => _CadastroAtividadePageState();
}

class _CadastroAtividadePageState extends State<CadastroAtividadePage> {
  final TextEditingController _descricao = TextEditingController();
  final TextEditingController _quantidade = TextEditingController();
  String? custo = 'Opção 1';
  String? unidade = 'Opção 2';
  String? quantidade = 'Opção 3';

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
                    Text("Cadastre uma \nnova atividade",
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
                  text: 'Descrição',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _descricao,
                  obscure: false,
                  showEyeIcon: false,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomInputBar(
                  text: 'Quantidade',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _quantidade,
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
                      text: 'Custo',
                      largura: 180,
                      selectedValue: custo,
                      items: ['Opção 1', 'Opção 2', 'Opção 3'],
                      onChanged: (newValue) {
                        setState(() {
                          custo = newValue;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    CustomInputSelectBar(
                      text: 'Unidade',
                      largura: 180,
                      selectedValue: unidade,
                      items: ['Opção 1', 'Opção 2', 'Opção 3'],
                      onChanged: (newValue) {
                        setState(() {
                          custo = newValue;
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
                  text: 'Quantidade',
                  largura: 370,
                  selectedValue: quantidade,
                  items: ['Opção 1', 'Opção 2', 'Opção 3'],
                  onChanged: (newValue) {
                    setState(() {
                      custo = newValue;
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
            )
          ],
        ),
      ),
    );
  }
}
