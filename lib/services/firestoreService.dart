import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/prontuario.dart';

class FirestoreService {
  final CollectionReference prontuariosCollection = FirebaseFirestore.instance
      .collection('prontuarios');
  Future<void> adicionarProntuario(Prontuario prontuario) async {
    await prontuariosCollection.add(prontuario.toMap());
  }

  Future<void> deletarProntuario(String id) async {
    await prontuariosCollection.doc(id).delete();
  }

  Stream<List<Prontuario>> getProntuarios() {
    return prontuariosCollection.snapshots().map(
      (snapshot) =>
          snapshot.docs
              .map(
                (doc) => Prontuario.fromMap(
                  doc.id,
                  doc.data() as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }
}
