import 'package:cloud_firestore/cloud_firestore.dart';

class Custo{
  String? id;
  final String descricao;
  final DocumentReference id_usuario;
  
  Custo({
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

  factory Custo.fromMap(String id, Map<String, dynamic> map) {
    return Custo(
      id: id,
      descricao: map['descricao'],
      id_usuario: map['id_usuario'],
    );
  }
}