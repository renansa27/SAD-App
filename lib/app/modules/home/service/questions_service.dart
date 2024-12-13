//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class QuestionsService {
  Future<void> createOrUpdateQuestion(String field, String question);
  Future<DocumentSnapshot> readQuestions();
  Future<void> deleteQuestionField(String field);
}

class QuestionsServiceImpl extends QuestionsService {
  //final FirebaseStorage? _firebaseStorage;
  //final String? _currentUserId = FirebaseAuth.instance.currentUser?.uid;

  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createOrUpdateQuestion(String field, String question) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Referência ao documento único na coleção 'questions'
    DocumentReference questionDoc =
        firestore.collection('questions').doc('uniqueDocument');

    // Atualizar ou criar o campo específico
    await questionDoc.set({
      field: question,
    }, SetOptions(merge: true));
  }

  @override
  Future<DocumentSnapshot> readQuestions() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot questionDoc =
        await firestore.collection('questions').doc('uniqueDocument').get();
    return questionDoc;
  }

  @override
  Future<void> deleteQuestionField(String field) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Referência ao documento único na coleção 'questions'
    DocumentReference questionDoc =
        firestore.collection('questions').doc('uniqueDocument');

    // Excluir o campo específico
    await questionDoc.update({
      field: FieldValue.delete(),
    });
  }

  // Exemplo de uso:
  /* // Exemplo de criação ou atualização de uma questão
    createOrUpdateQuestion('question1', 'Qual é a sua temperatura corporal?');

    // Exemplo de leitura das questões
    readQuestions().then((doc) {
      doc.data()?.forEach((key, value) {
        print('$key: $value');
      });
    });

    // Exemplo de exclusão de uma questão específica
    deleteQuestionField('question1'); */
}
