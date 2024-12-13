import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/cubit/patients_cubit/patient_state.dart';
import 'package:sad_app/app/modules/home/service/teams_service.dart';

class TeamsState extends Cubit<PatientState> {
  final TeamsService teamsService;
  TeamsState(this.teamsService) : super(PatientState.init());

  Future<void> getAllPatients() async {
    //emit(ContactLoading());
    //emitIsLoading();
    try {
      await teamsService.getAllTeams();
      //emitIsNotLoading();
      //emit(ContactLoaded());
    } on Exception catch (e) {
      //emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  /* Future<void> getAllDataFromFirestore() async {
    try {
      await teamsService.getAllDataFromFirestore();
    } on Exception catch (e) {}
  } */

  Future<void> createPatient(String teamId) async {
    try {
      await teamsService.getTeamById(teamId);
    } on Exception catch (e) {}
  }

  Future<void> createTeam(
      {required String name, required List<String>? professionalIds}) async {
    try {
      await teamsService.createTeam(name, professionalIds);
    } on Exception catch (e) {}
  }
}
