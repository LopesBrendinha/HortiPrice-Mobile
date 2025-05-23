import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/button_small/customButtonSmall.dart';
import 'package:hortipricemobile/components/navBar/customNavBar.dart';

class CadastrosPage extends StatefulWidget {
  const CadastrosPage({super.key});

  @override
  State<CadastrosPage> createState() => _CadastrosPageState();
}

class _CadastrosPageState extends State<CadastrosPage> {
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(242, 242, 247, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                child: Image.asset(
                  './assets/imgs/logo.png',
                  fit: BoxFit.contain,
                  height: 240 * 0.45,
                  width: 290 * 0.45,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              children: [
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Carlos,  o que ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(36, 138, 61, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'iremos',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(36, 138, 61, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'cadastrar?',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(36, 138, 61, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      './assets/imgs/pessoa4.png',
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 430.0,
              height: 850,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: <Color>[
                    Color.fromRGBO(48, 219, 91, 1),
                    Color.fromRGBO(36, 138, 92, 1)
                  ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Área',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroArea");
                              },
                            ),
                          ]),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Categoria',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroCategoria");
                              },
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Custo',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroCusto");
                              },
                            ),
                          ]),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Produtividade',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroProdutividade");
                              },
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Tipo',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroTipo");
                              },
                            ),
                          ]),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Atividade',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroAtividade");
                              },
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Componente',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroComponente");
                              },
                            ),
                          ]),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Direcionador',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroDirecionador");
                              },
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Subcategoria',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroSubcategoria");
                              },
                            ),
                          ]),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonSmall(
                              text: 'Unidade',
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                    context, "/cadastroUnidade");
                              },
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: CustomNavBar(currentPage: _currentPage));
  }
}
