import 'dart:io';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_state.dart';
import 'package:sad_app/app/modules/home/models/contact/contact_model.dart';
import 'package:sad_app/app/modules/home/service/contact_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactCubit extends Cubit<ContactState> {
  final ContactService contactService;
  ContactCubit(this.contactService) : super(ContactState.init());

  Future<void> addContact() async {}

  Future<void> removeContact() async {}

  Future<void> removeAllContacts() async {}

  //Local CSV Operations
  Future<void> shareContacts() async {
    emit(state.copyWith(isLoading: true));
    try {
      final csv = await contactService.createCsv();
      await contactService.shareContacts(csv: csv);
      emitIsNotLoading();
    } on Exception catch (e) {
      emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  Future<void> importCsvToDevice() async {
    //emit(ContactLoading());
    emitIsLoading();
    try {
      File? file = await contactService.getCsvFile();
      List<ContactModel>? contactList =
          await contactService.getContactsFromCSV(csv: file);
      await contactService.syncCsvWithLocalContacts(firebaseList: contactList);
      emitIsNotLoading();
      //emit(ContactLoaded());
    } on Exception catch (e) {
      emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  //Firebase Events
  Future<void> saveContactsCsvOnFirebase() async {
    emitIsLoading();
    try {
      final csv = await contactService.createCsv();
      await contactService.saveCsvOnFirebase(csv: csv);
      emitIsNotLoading();
      //emit(ContactLoaded());
    } on Exception catch (e) {
      emitError(message: e.toString());
      //emit(ContactError(error: e.toString()));
    }
  }

  Future<void> importFirebaseContactsToDevice() async {
    emitIsLoading();
    try {
      final csv = await contactService.getCsvFromFirebase();
      final contactList = await contactService.getContactsFromCSV(csv: csv);
      await contactService.syncCsvWithLocalContacts(firebaseList: contactList);
      emitContactList(contactList);
    } on Exception catch (e) {
      emitError(message: e.toString());
    }
  }

  Future<void> populateContactList() async {
    emitIsLoading();
    try {
      final csv = await contactService.getCsvFromFirebase();
      final contactList = await contactService.getContactsFromCSV(csv: csv);
      emitContactList(contactList);
    } on Exception catch (e) {
      emitError(message: e.toString());
    }
  }

  //Test code
  Future<void> deleteAllContacts() async {
    emitIsLoading();
    await contactService.deleteAllContacts();
    emitIsNotLoading();
  }

  void emitIsLoading() {
    emit(state.copyWith(isLoading: true));
  }

  void emitIsNotLoading() {
    emit(state.copyWith(isLoading: false));
  }

  void emitContactList(List<ContactModel>? contactList) {
    if (contactList?.isNotEmpty ?? false) {
      emit(state.copyWith(
        isLoading: false,
        contactList: contactList,
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        contactList: null,
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
