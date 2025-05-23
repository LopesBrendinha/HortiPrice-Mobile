import 'package:cloud_firestore/cloud_firestore.dart';

class Atividade{
  String? id;
  final String descricao;
  final int direcionador_quantidade;
  final DocumentReference custo_ref;
  final DocumentReference direcionador_ref;
  final DocumentReference unidade_ref;
  final DocumentReference id_usuario;
  
  Atividade({
    this.id,
    required this.descricao,
    required this.direcionador_quantidade,
    required this.custo_ref,
    required this.direcionador_ref,
    required this.unidade_ref,
    required this.id_usuario
  });

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'direcionador_quantidade': direcionador_quantidade,
      'custo_ref' : this.custo_ref,
      'direcionador_ref' : this.direcionador_ref,
      'unidade_ref' : this.unidade_ref,
      'id_usuario': id_usuario,
    };
  }

  factory Atividade.fromMap(String id, Map<String, dynamic> map) {
    return Atividade(
      id: id,
      descricao: map['descricao'],
      direcionador_quantidade: map['direcionador_quantidade'],
      custo_ref: map['custo_ref'],
      direcionador_ref: map['direcionador_ref'],
      unidade_ref: map['unidade_ref'],
      id_usuario: map['id_usuario'],
    );
  }
}