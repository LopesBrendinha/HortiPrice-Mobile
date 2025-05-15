import 'package:flutter/material.dart';
import 'package:hortiprice/pages/dashboard/home/home_page.dart';
import 'package:hortiprice/pages/onboarding/inicial/inicial_page.dart';
import 'package:hortiprice/pages/signUp&login/login/login_page.dart';
import 'package:hortiprice/service/auth_service.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    
    if(auth.isLoading) return loading();
    else if(auth.usuario == null) return InicialPage();
    else return HomePage();

  }

  loading(){
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  
}