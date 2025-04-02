import 'package:flutter/material.dart';
import 'package:hortiprice/components/inputBar/customInputBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomInputBar(
                text: 'Digite seu nome',
                largura: 300,
                icon: Icons.person,
                controller: _controller,
                obscure: false,
              ),
              SizedBox(height: 20), // Espaçamento entre os widgets
              ElevatedButton(
                onPressed: () {
                  // Ação ao pressionar o botão
                  print("Nome digitado: ${_controller.text}");
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
