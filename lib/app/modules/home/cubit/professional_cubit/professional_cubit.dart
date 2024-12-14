import 'package:sad_app/app/modules/home/cubit/professional_cubit/professional_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/models/specialties/specialties_model.dart';
import 'package:sad_app/app/modules/home/models/teams/teams_model.dart';
import 'package:sad_app/app/modules/home/service/professional_service.dart';
import 'package:sad_app/main.dart';

class ProfessionalCubit extends Cubit<ProfessionalState> {
  final ProfessionalService professionalService;
  ProfessionalCubit(this.professionalService) : super(ProfessionalState.init());

  Future<void> getProfessionals() async {
    //emit(ContactLoading());
    //emitIsLoading();
    try {
      await professionalService.getAllProfessionals();
      //emitIsNotLoading();
      //emit(ContactLoaded());
    } on Exception catch (e) {
      //emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  /* Future<void> createProfesional({
    required String name,
    required String email,
    required SpecialtiesModel? specialtyRef,
    required TeamsModel? teamRef,
  }) async {
    try {
      await professionalService.createProfessional(
        name,
        email,
        specialtyRef,
        teamRef,
      );
    } on Exception catch (e) {
      logger.e(e);
    }
  } */

  Future<void> createProfessional({
    required String id,
    required String name,
    required String email,
    required String specialtyId,
    required String teamId,
  }) async {
    try {
      await professionalService.createProfessional(
        id,
        name,
        email,
        specialtyId,
        teamId,
      );
    } on Exception catch (e) {
      logger.e(e);
    }
  }

  Future<void> updateProfessional({
    required String id,
    required String name,
    required String email,
    required String specialtyId,
    required String teamId,
  }) async {
    try {
      await professionalService.updateProfessional(
        id: id,
        name: name,
        email: email,
        specialtyId: specialtyId,
        teamId: teamId,
      );
    } on Exception catch (e) {
      logger.e(e);
    }
  }

  Future<void> getAllDataFromFirestore() async {
    try {
      await professionalService.getAllDataFromFirestore();
    } on Exception catch (e) {}
  }

  /* Future<void> createProfessional() async {
    try {
      await professionalService.createProfessional();
    } on Exception catch (e) {}
  } */

  Future<void> getProfessionalById({required String professionalId}) async {
    try {
      await professionalService.getProfessionalById(professionalId);
    } on Exception catch (e) {}
  }
}
