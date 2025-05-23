import 'package:cloud_firestore/cloud_firestore.dart';

class Area{
  String? id;
  final String descricao;
  final DocumentReference tipo_ref;
  final DocumentReference custo_ref;
  final DocumentReference produtividade_ref;
  final DocumentReference componente_ref;
  final DocumentReference id_usuario;
  
  Area({
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

  factory Area.fromMap(String id, Map<String, dynamic> map) {
    return Area(
      id: id,
      descricao: map['descricao'],
      id_usuario: map['id_usuario'],
    );
  }
}