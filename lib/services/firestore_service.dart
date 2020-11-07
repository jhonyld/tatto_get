import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tatto_get/models/artista.dart';

class FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;
  var storage = FirebaseStorage.instance;

  void createRecord() async {
    //cria a tabela e seta a Seq como 1
    await db.collection("people").doc("1").set({
      'name': 'Teste',
      'age': '29',
      'birthDate': '01/09/1991',
      'active': 'true'
    });

    //Insere os dados em uma tabela existente
    DocumentReference ref = await db.collection("people").add({
      'name': 'Novo Teste',
      'age': '29',
      'birthDate': '01/09/1991',
      'active': 'true'
    });
  }

  void getData() {
    db.collection("Artista").get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((element) {
        print('${element.data()}');
      });
    });
  }

  Stream<List<Artista>> getArtist() {
    return db.collection('Artista').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Artista.fromJson(doc.data())).toList());
  }

  void getDataByFilter({String name}) {
    db
        .collection("Artista")
        .where('nome', isEqualTo: name)
        .get()
        .then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((element) {
        print('${element.data()}');
      });
    });
  }

  void updateData() {
    try {
      db.collection("people").doc("1").update({'birthDate': '01/01/2000'});
    } catch (e) {
      print(e.toString());
    }
  }

  void deleteData() {
    db.collection("people").doc("1").delete();
  }
}
