import 'package:cloud_firestore/cloud_firestore.dart';

class Componente{
  String? id;
  final String descricao;
  final int ano;
  final String mes;
  final int quantidade;
  final double valor_unitario;
  final DocumentReference custo_ref;
  final DocumentReference tipo_ref;
  final DocumentReference unidade_ref;
  final DocumentReference id_usuario;
  
  Componente({
    this.id,
    required this.descricao,
    required this.ano,
    required this.mes,
    required this.quantidade,
    required this.valor_unitario,
    required this.custo_ref,
    required this.tipo_ref,
    required this.unidade_ref,
    required this.id_usuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'descricao': descricao,
      'ano': ano,
      'mes' : mes,
      'quantidade' : quantidade,
      'valor_unitario' : valor_unitario,
      'custo_ref' : custo_ref,
      'tipo_ref' : tipo_ref,
      'unidade_ref' : unidade_ref,
      'id_usuario': id_usuario,
    };
  }

  factory Componente.fromMap(String id, Map<String, dynamic> map) {
    return Componente(
      id: id,
      descricao: map['descricao'],
      ano: map['ano'],
      mes: map['mes'],
      quantidade:  map['quantidade'],
      valor_unitario: map['valor_unitario'],
      custo_ref: map['custo_ref'],
      tipo_ref: map['tipo_ref'],
      unidade_ref: map['unidade_ref'],
      id_usuario: map['id_usuario'],
    );
  }
}