import 'package:flutter/material.dart';
import 'package:hortiprice/pages/iniciais/inicial/inicial_page.dart';

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
      theme: ThemeData(hintColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}
