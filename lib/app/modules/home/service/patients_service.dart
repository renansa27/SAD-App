//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sad_app/main.dart';

abstract class PatientService {
  getAllPatients();
  getAllDataFromFirestore();
  createPatient(String email, String name, String teamId,
      {bool isActive = true, String? inactivationReason});
  getPatientById(String professionalId);
  updatePatient(
    String patientId, {
    String? email,
    String? name,
    bool? isActive,
    String? inactivationReason,
    String? teamId,
  });
  deletePatient(String patientId);
}

class PatientServiceImpl extends PatientService {
  //final FirebaseStorage? _firebaseStorage;
  //final String? _currentUserId = FirebaseAuth.instance.currentUser?.uid;

  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createPatient(String email, String name, String teamId,
      {bool isActive = true, String? inactivationReason}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('patients').add({
      'email': email,
      'name': name,
      'teamId': firestore.collection('teams').doc(teamId),
      'isActive': isActive,
      'inactivationReason': inactivationReason,
    });
  }

  @override
  Future<DocumentSnapshot> getPatientById(String professionalId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot patientDoc =
        await firestore.collection('patients').doc(professionalId).get();
    return patientDoc;
  }

  @override
  Future<void> updatePatient(
    String patientId, {
    String? email,
    String? name,
    bool? isActive,
    String? inactivationReason,
    String? teamId,
  }) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    Map<String, dynamic> updatedData = {};
    if (email != null) updatedData['email'] = email;
    if (name != null) updatedData['name'] = name;
    if (isActive != null) updatedData['isActive'] = isActive;
    if (inactivationReason != null) {
      updatedData['inactivationReason'] = inactivationReason;
    }
    if (teamId != null) {
      updatedData['teamId'] = firestore.collection('teams').doc(teamId);
    }

    await firestore.collection('patients').doc(patientId).update(updatedData);
  }

  @override
  Future<void> deletePatient(String patientId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('patients').doc(patientId).delete();
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

  @override
  Future<void> getAllPatients() async {
    final collectionRef = firestore.collection('patients');
    final querySnapshot = await collectionRef.get();

    for (final doc in querySnapshot.docs) {
      logger.d('Documento ID: ${doc.id}');
      logger.d('Dados: ${doc.data()}');
    }
  }
}
