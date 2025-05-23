import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/navBar/customNavBar.dart';

class RelatoriosPage extends StatefulWidget {
  const RelatoriosPage({super.key});

  @override
  State<RelatoriosPage> createState() => _RelatoriosPageState();
}

class _RelatoriosPageState extends State<RelatoriosPage> {
  int _currentPage = 3;
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
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        './assets/imgs/pessoa3.png',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Carlos, qual',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(36, 138, 61, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Relatorio você',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(36, 138, 61, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'precisa?',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(36, 138, 61, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 430.0,
                height: 700,
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
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, "/relatorioCustoABC");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(242, 242, 247, 1),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Container(
                              width: 290,
                              height: 130,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon10.png',
                                        height: 120,
                                        width: 120,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Custeio - ABC',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, "/relatorioCustoVariavel");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(242, 242, 247, 1),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Container(
                              width: 290,
                              height: 130,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon9.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 33),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Custo',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Variavel',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, "/relatorioCustoPorAbsorcao");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(242, 242, 247, 1),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Container(
                              width: 290,
                              height: 130,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon8.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 33),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Custo Por',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Absorção',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, "/relatorioTotaisCustos");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(242, 242, 247, 1),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Container(
                              width: 290,
                              height: 130,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon7.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 33),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'Total ',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: <Color>[
                                            Color.fromRGBO(48, 219, 91, 1),
                                            Color.fromRGBO(36, 138, 92, 1),
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          'por Custo',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(currentPage: _currentPage));
  }
}
