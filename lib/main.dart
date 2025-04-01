import 'package:flutter/material.dart';
import 'package:hortiprice/pages/onboarding/explica%C3%A7%C3%A3o/explicacao_page.dart';
import 'package:hortiprice/pages/onboarding/inicial/inicial_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicialPage(),
      initialRoute: "/",
      routes: {
        "/explicacao": (context) => ExplicacaoPage(),
        "/inicial": (context) => InicialPage(),
      },
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    );
  }
}
