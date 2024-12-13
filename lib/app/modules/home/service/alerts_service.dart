//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AlertsService {
  Future<void> createAlert(String message, String patientId, String teamId,
      {bool resolved = false});
  Future<DocumentSnapshot> readAlert(String alertId);
  Future<void> updateAlert(String alertId, {String? message, bool? resolved});
  Future<void> deleteAlert(String alertId);
  Future<QuerySnapshot> getAllAlerts();
  Future<QuerySnapshot> getAllAlertsByTeam(String teamId);
}

class AlertsServiceImpl extends AlertsService {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> createAlert(String message, String patientId, String teamId,
      {bool resolved = false}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('alerts').add({
      'message': message,
      'patientId': firestore.collection('patients').doc(patientId),
      'teamId': firestore.collection('teams').doc(teamId),
      'resolved': resolved,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  @override
  Future<DocumentSnapshot> readAlert(String alertId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    DocumentSnapshot alertDoc =
        await firestore.collection('alerts').doc(alertId).get();
    return alertDoc;
  }

  @override
  Future<void> updateAlert(
    String alertId, {
    String? message,
    bool? resolved,
  }) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    Map<String, dynamic> updatedData = {};
    if (message != null) updatedData['message'] = message;
    if (resolved != null) updatedData['resolved'] = resolved;

    await firestore.collection('alerts').doc(alertId).update(updatedData);
  }

  @override
  Future<void> deleteAlert(String alertId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('alerts').doc(alertId).delete();
  }

  @override
  Future<QuerySnapshot> getAllAlerts() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot alertsSnapshot = await firestore.collection('alerts').get();
    return alertsSnapshot;
  }

  @override
  Future<QuerySnapshot> getAllAlertsByTeam(String teamId) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Obter todos os alertas de um time específico
    QuerySnapshot alertsSnapshot = await firestore
        .collection('alerts')
        .where('teamId', isEqualTo: firestore.collection('teams').doc(teamId))
        .get();

    return alertsSnapshot;
  }

  //Exemplo de uso:

  // Exemplo de criação de um alerta
  /* createAlert(
    'Paciente apresentou febre alta',
    'SJI5oywSmEnQeqDaFcxe',
    'CWcfqBKL2ZI4JDJugP95',
  ); */

  // Exemplo de leitura de um alerta
  /* readAlert('alert_doc_id').then((doc) {
    print('Alerta: ${doc.get('message')}, Resolvido: ${doc.get('resolved')}');
  }); */

  // Exemplo de atualização de um alerta
  /* updateAlert('alert_doc_id', message: 'Paciente apresentou febre alta e dor de cabeça', resolved: true); */

  // Exemplo de exclusão de um alerta
  /* deleteAlert('alert_doc_id'); */

  // Exemplo de obter todos os alertas
  /* getAllAlerts().then((snapshot) {
    snapshot.docs.forEach((doc) {
      print('Alerta: ${doc.get('message')}, Resolvido: ${doc.get('resolved')}');
    });
  }); */

  // Exemplo de obter todos os alertas de um time específico
  /* getAllAlertsByTeam('CWcfqBKL2ZI4JDJugP95').then((snapshot) {
      snapshot.docs.forEach((doc) {
        print(
            'Alerta: ${doc.get('message')}, Resolvido: ${doc.get('resolved')}');
      });
    }); */

  // Widget para mostrar apenas os alertas que forem para o time do profissional logado:
  /* 
  class AlertsScreen extends StatelessWidget {
  final String teamId;

  AlertsScreen({required this.teamId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas do Time'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('alerts')
          .where('teamId', isEqualTo: FirebaseFirestore.instance.collection('teams').doc(teamId))
          .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final alerts = snapshot.data!.docs;
          if (alerts.isEmpty) {
            return Center(child: Text('Nenhum alerta encontrado.'));
          }
          return ListView.builder(
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              final alert = alerts[index];
              return ListTile(
                title: Text(alert['message']),
                subtitle: Text('Resolvido: ${alert['resolved']}'),
                trailing: Icon(
                  alert['resolved'] ? Icons.check_circle : Icons.error,
                  color: alert['resolved'] ? Colors.green : Colors.red,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
*/

  //Exemplo de uso do Widget:
  /* @override
  void initState() {
    super.initState();

    // Exemplo de navegação para a tela de alertas com o teamId
    String teamId =
        'CWcfqBKL2ZI4JDJugP95'; // Obtenha este valor conforme necessário
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AlertsScreen(teamId: teamId)),
    );
  } */

  // O Widget de alert mas usando o FutureBuilder para sair mais barato:
  /* class AlertsScreen extends StatelessWidget {
  final String teamId;

  AlertsScreen({required this.teamId});

  Future<QuerySnapshot> getAlertsByTeam(String teamId) {
    // Utilizar a função getAllAlertsByTeam(teamId) do 'alerts_service.dart'
    return FirebaseFirestore.instance.collection('alerts')
      .where('teamId', isEqualTo: FirebaseFirestore.instance.collection('teams').doc(teamId))
      .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas do Time'),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: getAlertsByTeam(teamId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar alertas.'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('Nenhum alerta encontrado.'));
          }
          final alerts = snapshot.data!.docs;
          return ListView.builder(
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              final alert = alerts[index];
              return ListTile(
                title: Text(alert['message']),
                subtitle: Text('Resolvido: ${alert['resolved']}'),
                trailing: Icon(
                  alert['resolved'] ? Icons.check_circle : Icons.error,
                  color: alert['resolved'] ? Colors.green : Colors.red,
                ),
              );
            },
          );
        },
      ),
    );
  }
} */

  // Exemplo de navegação para a tela de alertas com o teamId
  /* String teamId =
        'CWcfqBKL2ZI4JDJugP95'; // Obtenha este valor conforme necessário
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AlertsScreen(teamId: teamId)),
    ); */
}
