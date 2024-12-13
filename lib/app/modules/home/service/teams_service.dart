//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TeamsService {
  Future<void> createTeam(String name, List<String>? professionalIds);
  Future<DocumentSnapshot> getTeamById(String teamId);
  Future<void> updateTeam(String teamId,
      {String? name, List<String>? professionalIds});
  Future<void> deleteTeam(String teamId);
  Future<QuerySnapshot> getAllTeams();
}

class TeamsServiceImpl extends TeamsService {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createTeam(String name, List<String>? professionalIds) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('teams').add({
      'name': name,
      'professionalIds': professionalIds,
    });
  }

  @override
  Future<DocumentSnapshot> getTeamById(String teamId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot teamDoc =
        await firestore.collection('teams').doc(teamId).get();
    return teamDoc;
  }

  @override
  Future<void> updateTeam(String teamId,
      {String? name, List<String>? professionalIds}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    Map<String, dynamic> updatedData = {};
    if (name != null) updatedData['name'] = name;
    if (professionalIds != null) {
      updatedData['professionalIds'] = professionalIds;
    }

    await firestore.collection('teams').doc(teamId).update(updatedData);
  }

  @override
  Future<void> deleteTeam(String teamId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('teams').doc(teamId).delete();
  }

  @override
  Future<QuerySnapshot> getAllTeams() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot teamsSnapshot = await firestore.collection('teams').get();
    return teamsSnapshot;
  }

  //Exemplo de uso:
/* 
  // Exemplo de criação de um time
  createTeam('Equipe A', ['profissional1', 'profissional2', 'profissional3']);

  // Exemplo de leitura de um time
  readTeam('CWcfqBKL2ZI4JDJugP95').then((doc) {
    print('Time: ${doc.get('name')}, IDs dos Profissionais: ${doc.get('professionalIds')}');
  });

  // Exemplo de atualização de um time
  updateTeam('CWcfqBKL2ZI4JDJugP95', name: 'Equipe Atualizada', professionalIds: ['profissional1', 'profissional4']);

  // Exemplo de exclusão de um time
  deleteTeam('CWcfqBKL2ZI4JDJugP95');

  // Exemplo de obter todos os times
  getAllTeams().then((snapshot) {
    snapshot.docs.forEach((doc) {
      print('Time: ${doc.get('name')}, IDs dos Profissionais: ${doc.get('professionalIds')}');
    });
  });
 */
}
