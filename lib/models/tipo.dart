import 'package:cloud_firestore/cloud_firestore.dart';

class Tipo{
  String? id;
  final String descricao;
  final DocumentReference area_ref;
  final DocumentReference categoria_ref;
  final DocumentReference subcategoria_ref;
  final DocumentReference id_usuario;
  
  Tipo({
    this.id,
    required this.descricao,
    required this.area_ref,
    required this.categoria_ref,
    required this.subcategoria_ref,
    required this.id_usuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'area_ref': area_ref,
      'categoria_ref': categoria_ref,
      'subcategoria_ref': subcategoria_ref,
      'id_usuario': id_usuario,
    };
  }

  factory Tipo.fromMap(String id, Map<String, dynamic> map) {
    return Tipo(
      id: id,
      descricao: map['descricao'],
      area_ref: map['area_ref'],
      categoria_ref: map['categoria_ref'],
      subcategoria_ref: map['subcategoria_ref'],
      id_usuario: map['id_usuario'],
    );
  }
}