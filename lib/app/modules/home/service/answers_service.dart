//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AnswersService {
  Future<void> createAnswer(String patientId, Map<String, String> answers);
  Future<DocumentSnapshot> readAnswer(String answerId);
  Future<void> updateAnswer(String answerId, Map<String, String> answers);
  Future<void> deleteAnswer(String answerId);
  Future<QuerySnapshot> getAllAnswers();
  Future<QuerySnapshot> getAllAnswersByPatient(String patientId);
  Future<QuerySnapshot> getAllAnswersByPatientAndDate(
    String patientId,
    DateTime date,
  );
}

class AnswersServiceImpl extends AnswersService {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createAnswer(
      String patientId, Map<String, String> answers) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('answers').add({
      'patientId': firestore.collection('patients').doc(patientId),
      'dateSubmitted': FieldValue.serverTimestamp(),
      'answers': answers,
    });
  }

  @override
  Future<DocumentSnapshot> readAnswer(String answerId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot answerDoc =
        await firestore.collection('answers').doc(answerId).get();
    return answerDoc;
  }

  @override
  Future<void> updateAnswer(
      String answerId, Map<String, String> answers) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('answers').doc(answerId).update({
      'answers': answers,
      'dateSubmitted': FieldValue.serverTimestamp(), // Atualiza a data de envio
    });
  }

  @override
  Future<void> deleteAnswer(String answerId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('answers').doc(answerId).delete();
  }

  @override
  Future<QuerySnapshot> getAllAnswers() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot answersSnapshot = await firestore.collection('answers').get();
    return answersSnapshot;
  }

  @override
  Future<QuerySnapshot> getAllAnswersByPatient(String patientId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Obter todas as respostas de um paciente específico
    QuerySnapshot answersSnapshot = await firestore
        .collection('answers')
        .where('patientId',
            isEqualTo: firestore.collection('patients').doc(patientId))
        .get();

    return answersSnapshot;
  }

  @override
  Future<QuerySnapshot> getAllAnswersByPatientAndDate(
      String patientId, DateTime date) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Definir o início e o fim do dia específico
    DateTime startOfDay = DateTime(date.year, date.month, date.day, 0, 0, 0);
    DateTime endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);

    // Obter todas as respostas de um paciente específico em uma data específica
    QuerySnapshot answersSnapshot = await firestore
        .collection('answers')
        .where('patientId',
            isEqualTo: firestore.collection('patients').doc(patientId))
        .where('dateSubmitted', isGreaterThanOrEqualTo: startOfDay)
        .where('dateSubmitted', isLessThanOrEqualTo: endOfDay)
        .get();

    return answersSnapshot;
  }

  //Exemplo de uso:

  // Exemplo de criação de uma resposta
  /* createAnswer('SJI5oywSmEnQeqDaFcxe', {
    'question1': 'Resposta à pergunta 1',
    'question2': 'Resposta à pergunta 2',
    'question3': 'Resposta à pergunta 3',
  }); */

  // Exemplo de leitura de uma resposta
  /* readAnswer('answer_doc_id').then((doc) {
    print('Respostas: ${doc.get('answers')}');
  }); */

  // Exemplo de atualização de uma resposta
  /* updateAnswer('answer_doc_id', {
    'question1': 'Resposta atualizada à pergunta 1',
    'question2': 'Resposta atualizada à pergunta 2',
    'question3': 'Resposta atualizada à pergunta 3',
  }); */

  // Exemplo de exclusão de uma resposta
  /* deleteAnswer('answer_doc_id'); */

  // Exemplo de obter todas as respostas
  /* getAllAnswers().then((snapshot) {
    snapshot.docs.forEach((doc) {
      print('Respostas: ${doc.get('answers')}');
    });
  }); */

  // Exemplo de obter todas as respostas de um paciente específico
  /* getAllAnswersByPatient('SJI5oywSmEnQeqDaFcxe').then((snapshot) {
    snapshot.docs.forEach((doc) {
      print('Respostas do Paciente: ${doc.get('answers')}');
    });
  }); */

  // Exemplo de obter todas as respostas de um paciente específico em uma data específica
  /* getAllAnswersByPatientAndDate('SJI5oywSmEnQeqDaFcxe', DateTime(2024, 12, 13)).then((snapshot) {
    snapshot.docs.forEach((doc) {
      print('Respostas do Paciente na Data: ${doc.get('answers')}');
    });
  }); */
}
