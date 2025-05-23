import 'package:cloud_firestore/cloud_firestore.dart';

class Direcionador{
  String? id;
  final String descricao;
  final DocumentReference id_usuario;
  
  Direcionador({
    this.id,
    required this.descricao,
    required this.id_usuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'id_usuario': id_usuario,
    };
  }

  factory Direcionador.fromMap(String id, Map<String, dynamic> map) {
    return Direcionador(
      id: id,
      descricao: map['descricao'],
      id_usuario: map['id_usuario'],
    );
  }
}