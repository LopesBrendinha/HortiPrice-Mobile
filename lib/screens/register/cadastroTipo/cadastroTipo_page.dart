import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button/CustomButton.dart';
import 'package:hortipricemobile/components/inputBar/customInputBar.dart';
import 'package:hortipricemobile/components/inputSelectBar/customInputSelectBar.dart';
import 'package:quickalert/quickalert.dart';

class CadastroTipoPage extends StatefulWidget {
  const CadastroTipoPage({super.key});

  @override
  State<CadastroTipoPage> createState() => _CadastroTipoPageState();
}

class _CadastroTipoPageState extends State<CadastroTipoPage> {
  final TextEditingController _tipo = TextEditingController();

  final List<String> categoriaList = ['Opção 1', 'Opção 2', 'Opção 3'];
  final List<String> areaList = ['Opção 1', 'Opção 2', 'Opção 3'];
  final List<String> subcategoriaList = ['Opção 1', 'Opção 2', 'Opção 3'];

  String? categoria;
  String? area;
  String? subcategoria;

  @override
  void initState() {
    super.initState();
    categoria = categoriaList.first;
    area = areaList.first;
    subcategoria = subcategoriaList.first;
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
                  title: 'O que é o Tipo?',
                  text:
                      'Nome da cultura (ex.: Alho Irrigado, Morango, Rosa, etc.).',
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
                    Text("Cadastre um \nnovo tipo",
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
                  text: 'Tipo',
                  largura: 370,
                  icon1: Icons.create_outlined,
                  controller: _tipo,
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
                      text: 'Categoria',
                      largura: 180,
                      selectedValue: categoria,
                      items: ['Opção 1', 'Opção 2', 'Opção 3'],
                      onChanged: (newValue) {
                        setState(() {
                          categoria = newValue;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    CustomInputSelectBar(
                      text: 'Area',
                      largura: 180,
                      selectedValue: area,
                      items: ['Opção 1', 'Opção 2', 'Opção 3'],
                      onChanged: (newValue) {
                        setState(() {
                          area = newValue;
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
                  text: 'Subcategoria',
                  largura: 370,
                  selectedValue: subcategoria,
                  items: ['Opção 1', 'Opção 2', 'Opção 3'],
                  onChanged: (newValue) {
                    setState(() {
                      subcategoria = newValue;
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
