import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hortipricemobile/models/area.dart';
import 'package:hortipricemobile/models/atividade.dart';
import 'package:hortipricemobile/models/categoria.dart';
import 'package:hortipricemobile/models/componente.dart';
import 'package:hortipricemobile/models/custo.dart';

class RegisterService {
  //=================== Seção: Área ===================
  final CollectionReference areasCollection = FirebaseFirestore.instance
      .collection('areas');
  Future<void> adicionarArea(Area area) async {
    await areasCollection.add(area.toMap());
  }

  Future<void> deletarArea(String id) async {
    await areasCollection.doc(id).delete();
  }

  Stream<List<Area>> getAreas() {
    return areasCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Area.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  //=================== Seção: Atividade ===================
  final CollectionReference atividadesCollection = FirebaseFirestore.instance
      .collection('atividades');
  Future<void> adicionarAtividade(Atividade atividade) async {
    await atividadesCollection.add(atividade.toMap());
  }

  Future<void> deletarAtividade(String id) async {
    await atividadesCollection.doc(id).delete();
  }

  Stream<List<Atividade>> getAtividades() {
    return atividadesCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Atividade.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  //=================== Seção: Categoria ===================
  final CollectionReference categoriasCollection = FirebaseFirestore.instance
      .collection('categorias');
  Future<void> adicionarCategoria(Categoria categoria) async {
    await categoriasCollection.add(categoria.toMap());
  }

  Future<void> deletarCategoria(String id) async {
    await categoriasCollection.doc(id).delete();
  }

  Stream<List<Categoria>> getCategorias() {
    return categoriasCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Categoria.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  //=================== Seção: Componente ===================
  final CollectionReference componentesCollection = FirebaseFirestore.instance
      .collection('componentes');
  Future<void> adicionarComponente(Componente componente) async {
    await componentesCollection.add(componente.toMap());
  }

  Future<void> deletarComponente(String id) async {
    await componentesCollection.doc(id).delete();
  }

  Stream<List<Componente>> getComponentes() {
    return componentesCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Componente.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  //=================== Seção: Custos ===================
  final CollectionReference custosCollection = FirebaseFirestore.instance
      .collection('custos');
  Future<void> adicionarCustos(Custo custo) async {
    await custosCollection.add(custo.toMap());
  }

  Future<void> deletarCusto(String id) async {
    await custosCollection.doc(id).delete();
  }

  Stream<List<Custo>> getCustos() {
    return custosCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Custo.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }
}
