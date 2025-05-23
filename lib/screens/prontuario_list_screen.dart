import 'package:flutter/material.dart';
import 'package:hortipricemobile/screens/formulario_prontuario_screen.dart';
import '../models/prontuario.dart';
import '../services/firestoreService.dart';

class ProntuarioListScreen extends StatelessWidget {
  final FirestoreService firestoreService = FirestoreService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prontuários')),
      body: StreamBuilder<List<Prontuario>>(
        stream: firestoreService.getProntuarios(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          final prontuarios = snapshot.data!;
          return ListView.builder(
            itemCount: prontuarios.length,
            itemBuilder: (context, index) {
              final p = prontuarios[index];
              return ListTile(
                title: Text(p.paciente),
                subtitle: Text(p.descricao),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => firestoreService.deletarProntuario(p.id!),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => FormularioProntuarioScreen()),
            ),
        child: Icon(Icons.add),
      ),
    );
  }
}
