import 'package:cloud_firestore/cloud_firestore.dart';

class Produtividade{
  String? id;
  final String descricao;
  final int ano;
  final String mes;
  final int valor;
  final DocumentReference tipo_ref;
  final DocumentReference unidade_ref;
  final DocumentReference id_usuario;
  
  Produtividade({
    this.id,
    required this.descricao,
    required this.ano,
    required this.mes,
    required this.valor,
    required this.tipo_ref,
    required this.unidade_ref,
    required this.id_usuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'id_usuario': id_usuario,
    };
  }

  factory Produtividade.fromMap(String id, Map<String, dynamic> map) {
    return Produtividade(
      id: id,
      descricao: map['descricao'],
      ano: map['ano'],
      mes: map['mes'],
      valor: map['valor'],
      tipo_ref: map['tipo_ref'],
      unidade_ref: map['unidade_ref'],
      id_usuario: map['id_usuario'],
    );
  }
}