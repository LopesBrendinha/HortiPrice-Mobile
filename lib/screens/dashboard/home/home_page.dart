import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;

    Future<void> signOut() async {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacementNamed(context, '/login');

    }

    return Scaffold(
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(242, 242, 247, 1),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  signOut();
                },
                child: Image.asset(
                  './assets/imgs/logout.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 90),
              Image.asset(
                './assets/imgs/logo.png',
                fit: BoxFit.contain,
                height: 240 * 0.45,
                width: 290 * 0.45,
              ),
              SizedBox(width: 120),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Olá Carlos,',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(36, 138, 61, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'O que iremos',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(36, 138, 61, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'fazer hoje?',
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
                        './assets/imgs/pessoa1.png',
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 430.0,
                height: 494.2,
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
                              Navigator.popAndPushNamed(context, "/cadastros");
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
                                  SizedBox(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon1.png',
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
                                          'Cadastros',
                                          style: TextStyle(
                                            fontSize: 25,
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
                              Navigator.popAndPushNamed(context, "/simulacoes");
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
                                  SizedBox(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon2.png',
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
                                          'Simulações',
                                          style: TextStyle(
                                            fontSize: 25,
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
                              Navigator.popAndPushNamed(context, "/relatorios");
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
                                  SizedBox(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        './assets/imgs/icon3.png',
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 27),
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
                                          'Relatórios',
                                          style: TextStyle(
                                            fontSize: 25,
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
                    ]),
              ),
            ],
          ),
        )
        );
  }
}
