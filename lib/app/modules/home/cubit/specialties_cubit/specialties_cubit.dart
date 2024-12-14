import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/cubit/specialties_cubit/specialties_state.dart';
import 'package:sad_app/app/modules/home/models/specialties/specialties_model.dart';
import 'package:sad_app/app/modules/home/service/specialties_service.dart';
import 'package:sad_app/main.dart';

class SpecialtiesCubit extends Cubit<SpecialtiesState> {
  final SpecialtiesService specialtiesService;
  SpecialtiesCubit(this.specialtiesService) : super(SpecialtiesState.init());

  Future<void> getAllSpecialties() async {
    //emit(ContactLoading());
    emitIsLoading();
    try {
      QuerySnapshot<Object?> specialtiesList =
          await specialtiesService.getAllSpecialties();
      List<SpecialtiesModel> specialtiesModelList = specialtiesList.docs
          .map((e) => SpecialtiesModel.fromFirestore(e))
          .toList();
      logger.d(specialtiesModelList);
      emitSpecialtiesList(specialtiesModelList);
    } on Exception catch (e) {
      emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  /* Future<void> getAllDataFromFirestore() async {
    try {
      await teamsService.getAllDataFromFirestore();
    } on Exception catch (e) {}
  } */

  Future<void> getSpecialtiesById(String teamId) async {
    try {
      await specialtiesService.getSpecialtiesById(teamId);
    } on Exception catch (e) {}
  }

  Future<void> createSpecialty(
      {required String name, required String? description}) async {
    try {
      await specialtiesService.createSpecialty(name, description: description);
    } on Exception catch (e) {}
  }

  void emitIsLoading() {
    emit(state.copyWith(isLoading: true));
  }

  void emitIsNotLoading() {
    emit(state.copyWith(isLoading: false));
  }

  void emitSpecialtiesList(List<SpecialtiesModel>? specialtiesList) {
    if (specialtiesList?.isNotEmpty ?? false) {
      emit(state.copyWith(
        isLoading: false,
        specialtiesList: specialtiesList,
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        specialtiesList: null,
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
