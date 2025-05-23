import 'package:cloud_firestore/cloud_firestore.dart';

class RelatorioABC{
  String? id;
  final double margem;
  final double precoVenda;
  final DocumentReference produtividade_ref;
  final DocumentReference tipo_ref;
  final DocumentReference id_usuario;
  
  RelatorioABC({
    this.id,
    required this.margem,
    required this.precoVenda,
    required this.produtividade_ref,
    required this.tipo_ref,
    required this.id_usuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'margem': margem,
      'precoVenda': precoVenda,
      'produtividade_ref': produtividade_ref,
      'tipo_ref': tipo_ref,
      'id_usuario': id_usuario,
    };
  }

  factory RelatorioABC.fromMap(String id, Map<String, dynamic> map) {
    return RelatorioABC(
      id: id,
      margem: map['margem'],
      precoVenda: map['precoVenda'],
      produtividade_ref: map['produtividade_ref'],
      tipo_ref: map['tipo_ref'],
      id_usuario: map['id_usuario'],
    );
  }
}