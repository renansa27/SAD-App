import 'package:sad_app/app/modules/home/cubit/professional_cubit/professional_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/service/professional_service.dart';

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
