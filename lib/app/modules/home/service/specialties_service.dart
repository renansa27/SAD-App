//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class SpecialtiesService {
  Future<void> createSpecialty(String name, {String? description});
  Future<DocumentSnapshot> getSpecialtiesById(String specialtyId);
  Future<void> updateSpecialty(String specialtyId,
      {String? name, String? description});
  Future<QuerySnapshot> getAllSpecialties();
}

class SpecialtiesServiceImpl extends SpecialtiesService {
  final firestore = FirebaseFirestore.instance;
  @override
  Future<void> createSpecialty(String name, {String? description}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('specialties').add({
      'name': name,
      'description': description,
    });
  }

  @override
  Future<DocumentSnapshot> getSpecialtiesById(String specialtyId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot specialtyDoc =
        await firestore.collection('specialties').doc(specialtyId).get();
    return specialtyDoc;
  }

  @override
  Future<void> updateSpecialty(String specialtyId,
      {String? name, String? description}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    Map<String, dynamic> updatedData = {};
    if (name != null) updatedData['name'] = name;
    if (description != null) updatedData['description'] = description;

    await firestore
        .collection('specialties')
        .doc(specialtyId)
        .update(updatedData);
  }

  @override
  Future<QuerySnapshot> getAllSpecialties() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot specialtiesSnapshot =
        await firestore.collection('specialties').get();
    return specialtiesSnapshot;
  }

  //Exemplo de uso:
  // Exemplo de criação de uma especialidade
  /* createSpecialty('Cardiologia',
        description:
            'Especialidade médica que cuida do coração e do sistema cardiovascular.');

    // Exemplo de leitura de uma especialidade
    readSpecialty('CmpBdyg7Y7QuofTiO6mN').then((doc) {
      print(
          'Especialidade: ${doc.get('name')}, Descrição: ${doc.get('description')}');
    });

    // Exemplo de atualização de uma especialidade
    updateSpecialty('CmpBdyg7Y7QuofTiO6mN',
        name: 'Nova Cardiologia', description: 'Atualizada');

    // Exemplo de exclusão de uma especialidade
    deleteSpecialty('CmpBdyg7Y7QuofTiO6mN');

    // Exemplo de obter todas as especialidades
    getAllSpecialties().then((snapshot) {
      snapshot.docs.forEach((doc) {
        print(
            'Especialidade: ${doc.get('name')}, Descrição: ${doc.get('description')}');
      });
    }); */
}
