//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sad_app/app/modules/home/models/professional/professional_model.dart';
import 'package:sad_app/app/modules/home/models/specialties/specialties_model.dart';
import 'package:sad_app/app/modules/home/models/teams/teams_model.dart';
import 'package:sad_app/main.dart';

abstract class ProfessionalService {
  getAllProfessionals();
  getAllDataFromFirestore();
  Future<void> createProfessional(
    String id,
    String name,
    String email,
    String specialtyId,
    String teamId,
  );
  getProfessionalById(String id);
  Future<void> updateProfessional({
    required String id,
    required String name,
    required String email,
    required String specialtyId,
    required String teamId,
  });
  deleteProfessional(String id);
}

class ProfessionalServiceImpl extends ProfessionalService {
  //final FirebaseStorage? _firebaseStorage;
  //final String? _currentUserId = FirebaseAuth.instance.currentUser?.uid;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /* @override
  void createProfessional() async {
    DocumentReference specialtyRef =
        firestore.collection('specialties').doc('CmpBdyg7Y7QuofTiO6mN');
    DocumentReference teamRef =
        firestore.collection('teams').doc('CWcfqBKL2ZI4JDJugP95');

    // Criar o novo profissional com os dados fornecidos
    await firestore.collection('professionals').add({
      'createdAt': FieldValue.serverTimestamp(),
      'nome': 'Renan Sá Cavalcante',
      'email': 'renansa27@gmail.com',
      'especialidade': specialtyRef,
      'teamId': teamRef,
    });
  } */

  /* @override
  Future<void> createProfessional(
    String name,
    String email,
    SpecialtiesModel? specialtyRef,
    TeamsModel? teamRef,
  ) async {
    ProfessionalModel professional = ProfessionalModel(
      name: name,
      email: email,
      createdAt: DateTime.now(),
      specialtyRef: specialtyRef,
      teamRef: teamRef,
    );
    try {
      await _firestore.collection('professionals').add(professional.toJson());
    } on Exception catch (e) {
      logger.e(e);
    }
  } */

  @override
  Future<void> createProfessional(
    String id,
    String name,
    String email,
    String specialtyId,
    String teamId,
  ) async {
    ProfessionalModel professional = ProfessionalModel(
      id: id,
      name: name,
      email: email,
      createdAt: DateTime.now(),
      specialtyRef:
          FirebaseFirestore.instance.collection('specialties').doc(specialtyId),
      teamRef: FirebaseFirestore.instance.collection('teams').doc(teamId),
    );
    try {
      await _firestore.collection('professionals').add(professional.toJson());
    } on Exception catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<ProfessionalModel?> getProfessionalById(String id) async {
    DocumentSnapshot doc =
        await _firestore.collection('professionals').doc(id).get();
    if (doc.exists) {
      return ProfessionalModel.fromFirestore(doc);
    }
    return null;
  }

  /* @override
  Future<void> updateProfessional({
    required String id,
    required String name,
    required String email,
    SpecialtiesModel? specialtyRef,
    TeamsModel? teamRef,
  }) async {
    ProfessionalModel professional = ProfessionalModel(
      id: id,
      name: name,
      email: email,
      specialtyRef: specialtyRef,
      teamRef: teamRef,
      createdAt: DateTime.now(),
    );
    await _firestore
        .collection('professionals')
        .doc(professional.id)
        .update(professional.toJson());
  } */
  @override
  Future<void> updateProfessional({
    required String id,
    required String name,
    required String email,
    required String specialtyId,
    required String teamId,
  }) async {
    ProfessionalModel professional = ProfessionalModel(
      id: id,
      name: name,
      email: email,
      specialtyRef:
          FirebaseFirestore.instance.collection('specialties').doc(specialtyId),
      teamRef: FirebaseFirestore.instance.collection('teams').doc(teamId),
      createdAt: DateTime.now(),
    );
    try {
      await _firestore
          .collection('professionals')
          .doc(professional.id)
          .update(professional.toJson());
    } on Exception catch (e) {
      logger.e(e);
    }
  }

  @override
  getAllDataFromFirestore() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Liste manualmente as coleções de nível superior que você conhece
    final List<String> collectionNames = [
      'alerts',
      'answers',
      'patients',
      'professionals',
      'questions',
      'specialties',
      'teams'
    ]; // Adicione suas coleções aqui

    for (var collectionName in collectionNames) {
      final collection = firestore.collection(collectionName);
      logger.d('Coleção: $collectionName');

      // Obter todos os documentos dentro da coleção
      final QuerySnapshot querySnapshot = await collection.get();

      for (var document in querySnapshot.docs) {
        logger.d('Documento: ${document.id}');
        logger.d('Conteúdo: ${document.data()}');
      }
    }
  }

  Future<void> deleteProfessional(String id) async {
    await _firestore.collection('professionals').doc(id).delete();

    @override
    Future<void> getDocsList() async {
      /* final collectionRef =
        FirebaseFirestore.instance.collection('professionals');
    final docRef = collectionRef.doc('SJI5oywSmEnQeqDaFcxe'); */

      final collectionRef = _firestore.collection('professionals');
      final querySnapshot = await collectionRef.get();

      for (final doc in querySnapshot.docs) {
        logger.d('Documento ID: ${doc.id}');
        logger.d('Dados: ${doc.data()}');
      }
    }
  }

  @override
  Future<List<ProfessionalModel>> getAllProfessionals() async {
    QuerySnapshot querySnapshot =
        await _firestore.collection('professionals').get();
    return querySnapshot.docs
        .map((doc) => ProfessionalModel.fromFirestore(doc))
        .toList();
  }
}
