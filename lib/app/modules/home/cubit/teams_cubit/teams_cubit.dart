import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/cubit/teams_cubit/teams_state.dart';
import 'package:sad_app/app/modules/home/models/teams/teams_model.dart';
import 'package:sad_app/app/modules/home/service/teams_service.dart';

class TeamsCubit extends Cubit<TeamsState> {
  final TeamsService teamsService;
  TeamsCubit(this.teamsService) : super(TeamsState.init());

  Future<void> getAllTeams() async {
    try {
      emitIsLoading();
      //emitIsNotLoading();
      QuerySnapshot<Object?> teamsList = await teamsService.getAllTeams();
      List<TeamsModel> teamsModelList =
          teamsList.docs.map((e) => TeamsModel.fromFirestore(e)).toList();
      //logger.d(teamsModelList);
      emitTeamsList(teamsModelList);
    } on Exception catch (e) {
      emitError(message: e.toString());
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

  void emitIsLoading() {
    emit(state.copyWith(isLoading: true));
  }

  void emitIsNotLoading() {
    emit(state.copyWith(isLoading: false));
  }

  void emitTeamsList(List<TeamsModel>? teamsList) {
    if (teamsList?.isNotEmpty ?? false) {
      emit(state.copyWith(
        isLoading: false,
        teamsList: teamsList,
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        teamsList: null,
      ));
    }
  }

  void emitError({@required String? message}) {
    emit(state.copyWith(
      error: message,
      isLoading: false,
    ));
  }
}
