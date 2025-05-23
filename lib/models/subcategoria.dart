class Subcategoria{
  String? id;
  final String descricao;
  final String id_usuario;
  
  Subcategoria({
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

  factory Subcategoria.fromMap(String id, Map<String, dynamic> map) {
    return Subcategoria(
      id: id,
      descricao: map['descricao'],
      id_usuario: map['id_usuario'],
    );
  }
}