import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sad_app/app/modules/home/cubit/patients_cubit/patient_state.dart';
import 'package:sad_app/app/modules/home/service/patients_service.dart';

class PatientCubit extends Cubit<PatientState> {
  final PatientService patientService;
  PatientCubit(this.patientService) : super(PatientState.init());

  Future<void> getAllPatients() async {
    //emit(ContactLoading());
    //emitIsLoading();
    try {
      await patientService.getAllPatients();
      //emitIsNotLoading();
      //emit(ContactLoaded());
    } on Exception catch (e) {
      //emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  Future<void> getAllDataFromFirestore() async {
    try {
      await patientService.getAllDataFromFirestore();
    } on Exception catch (e) {}
  }

  Future<void> createPatient() async {
    try {
      //await professionalService.createPatient();
    } on Exception catch (e) {}
  }

  Future<void> getPatientById({required String patientId}) async {
    try {
      await patientService.getPatientById(patientId);
    } on Exception catch (e) {}
  }
}
