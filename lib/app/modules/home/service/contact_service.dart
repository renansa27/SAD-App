import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:csv/csv.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:contacts_service/contacts_service.dart';
//import 'package:share/share.dart';

import 'package:sad_app/common/log.dart';
import 'package:sad_app/app/modules/home/models/contact/contact_model.dart';
import 'package:sad_app/app/modules/home/models/email/email.dart';
import 'package:sad_app/app/modules/home/models/phone/phone.dart';
import 'package:sad_app/app/modules/home/models/postal_addresses/postal_address_model.dart';

abstract class ContactService {
  Future<String>? createCsv();

  Future<void> shareContacts({required String? csv});

  Future<File>? getCsvFile();

  //Local CSV Operations
  Future<List<ContactModel>?> getContactsFromCSV({required File? csv});

  Future<void> syncCsvWithLocalContacts(
      {required List<ContactModel>? firebaseList});

  //Firebase Service
  Future<void> saveCsvOnFirebase({required String? csv});

  Future<File?> getCsvFromFirebase();

  Future<void> deleteAllContacts();
}

class ContactServiceImpl extends ContactService {
  final FirebaseStorage? _firebaseStorage;
  final String? _currentUserId = FirebaseAuth.instance.currentUser?.uid;

  ContactServiceImpl(
    this._firebaseStorage,
  );

  @override
  Future<File>? getCsvFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );
    return result != null ? File(result.files.single.path!) : File('');
  }

  Future<bool> _getUserPermission() async {
    var res = await Permission.contacts.isGranted;
    if (!res) {
      await Permission.contacts.request();
      res = await Permission.contacts.isGranted;
    }
    return res;
  }

  Future<void> importContacts() async {}

  Future<void> exportContacts() async {
    final isPermissionGranted = await _getUserPermission();
    if (isPermissionGranted) {
    } else {
      log.d('Permission denied');
    }
  }

  @override
  Future<String>? createCsv() async {
    List<ContactModel> contactModelList = [];
    final isPermissionGranted = await Permission.contacts.request();
    /* if (isPermissionGranted == PermissionStatus.granted) {
      List<Contact> contactsList = await ContactsService.getContacts();
      for (var contact in contactsList) {
        ContactModel contactModel = _getContactModelFromContact(contact);
        if (contact.phones != null && contact.phones!.isNotEmpty) {
          contactModelList.add(contactModel);
        }
      }
    } */
    List<String> contactsAsJson = [];
    for (var contact in contactModelList) {
      contactsAsJson.add(json.encode(contact).toString());
    }
    return const ListToCsvConverter().convert([contactsAsJson]);
  }

  @override
  Future<void> shareContacts({required String? csv}) async {
    String dir = (await getExternalStorageDirectory())!.absolute.path;
    var file = dir;
    File f = File('$file/contacts.csv');
    await f.writeAsString(csv!);
    /* await Share.shareFiles([f.path],
        text: LocaleKeys.contact_service_my_contacts.tr()); */
  }

  @override
  Future<List<ContactModel>?> getContactsFromCSV({required File? csv}) async {
    List<ContactModel> contactModelList = [];
    final List<List<dynamic>> res =
        const CsvToListConverter().convert(csv!.readAsStringSync());
    if (res.isNotEmpty) {
      for (var contact in res.first) {
        final contactJson = json.decode(contact);
        final contactModel = ContactModel.fromJson(contactJson);
        contactModelList.add(contactModel);
      }
    }
    return contactModelList;
  }

  @override
  Future<File?> getCsvFromFirebase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    File csv = File('${appDocDir.path}/contacts.csv');
    try {
      await _firebaseStorage!
          .ref('${_currentUserId!}/contacts.csv')
          .writeToFile(csv);
    } on FirebaseException catch (e) {
      csv = File('');
      log.e(e.message!);
    }
    return csv;
  }

  @override
  Future<void> saveCsvOnFirebase({required String? csv}) async {
    List<int> encoded = utf8.encode(csv ?? '');
    Uint8List data = Uint8List.fromList(encoded);
    Reference ref = _firebaseStorage!.ref('${_currentUserId!}/contacts.csv');
    try {
      await ref.putData(data);
      Uint8List? downloadedData = await ref.getData();
      if (downloadedData != null) {
        //log.d(utf8.decode(downloadedData));
      }
    } on FirebaseException catch (e) {
      log.e(e.message!);
    }
  }

  Future<List<ContactModel>?> _getLocalContacts() async {
    final isPermissionGranted = await Permission.contacts.request();
    List<ContactModel>? contactModelList = [];
    /* if (isPermissionGranted == PermissionStatus.granted) {
      List<Contact>? contactsList = await ContactsService.getContacts();
      for (var contact in contactsList) {
        contactModelList.add(_getContactModelFromContact(contact));
      }
    } */
    return contactModelList;
  }

  @override
  Future<void> syncCsvWithLocalContacts({
    required List<ContactModel>? firebaseList,
  }) async {
    List<ContactModel>? contactsList = await _getLocalContacts();
    if (contactsList?.isNotEmpty ?? false) {
      for (var contact in (contactsList!)) {
        ContactModel contactModel = contact;
        final isContactExistOnFirebase =
            await _existContact(firebaseList, contactModel);
        if (!isContactExistOnFirebase) {
          await _addContatoOnDevice(contactModel);
        }
      }
    } else {
      for (var contactfirebase in (firebaseList ?? [])) {
        await _addContatoOnDevice(contactfirebase);
      }
    }
  }

  Future<void> _addContatoOnDevice(ContactModel contact) async {
    //await ContactsService.addContact(_getContactFromContactModel(contact));
  }

  /* ContactModel _getContactModelFromContact(Contact contact) {
    List<Phone> phones = [];
    List<Email> emails = [];
    List<PostalAddressModel> postalAddresses = [];
    contact.phones?.forEach((phone) {
      final phoneItem = Phone(label: phone.label!, value: phone.value!);
      phones.add(phoneItem);
    });
    contact.emails?.forEach((email) {
      final emailItem = Email(label: email.label, value: email.value);
      emails.add(emailItem);
    });
    contact.postalAddresses?.forEach((postalAddress) {
      final postalAddressItem = PostalAddressModel(
        label: postalAddress.label,
        postcode: postalAddress.postcode,
        country: postalAddress.country,
        region: postalAddress.region,
        city: postalAddress.city,
        street: postalAddress.street,
      );
      postalAddresses.add(postalAddressItem);
    });
    ContactModel contactModel = ContactModel(
      displayName: contact.displayName,
      givenName: contact.givenName,
      middleName: contact.middleName,
      prefix: contact.prefix,
      suffix: contact.suffix,
      familyName: contact.familyName,
      company: contact.company,
      jobTitle: contact.jobTitle,
      phones: phones,
      emails: emails,
      postalAddresses: postalAddresses,
    );
    return contactModel;
  } */

  /* Contact _getContactFromContactModel(ContactModel contactModel) {
    List<Item> phones = [];
    List<Item> emails = [];
    List<PostalAddress> postalAddresses = [];

    contactModel.phones?.forEach((phone) {
      final phoneItem = Item(label: phone.label!, value: phone.value!);
      phones.add(phoneItem);
    });
    contactModel.emails?.forEach((email) {
      final emailItem = Item(label: email.label, value: email.value);
      emails.add(emailItem);
    });
    contactModel.postalAddresses?.forEach((postalAddress) {
      final postalAddressItem = PostalAddress(
        label: postalAddress.label,
        postcode: postalAddress.postcode,
        country: postalAddress.country,
        region: postalAddress.region,
        city: postalAddress.city,
        street: postalAddress.street,
      );
      postalAddresses.add(postalAddressItem);
    });
    Contact contact = Contact(
      displayName: contactModel.displayName,
      givenName: contactModel.givenName,
      middleName: contactModel.middleName,
      prefix: contactModel.prefix,
      suffix: contactModel.suffix,
      familyName: contactModel.familyName,
      company: contactModel.company,
      jobTitle: contactModel.jobTitle,
      phones: phones,
      emails: emails,
      postalAddresses: postalAddresses,
    );
    return contact;
  } */

  Future<bool> _existContact(
    List<ContactModel>? firebaseContactsList,
    ContactModel contact,
  ) async {
    if (firebaseContactsList != null) {
      for (var firebaseContact in firebaseContactsList) {
        if (firebaseContact.displayName == contact.displayName) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Future<void> deleteAllContacts() async {
    final isPermissionGranted = await _getUserPermission();
    /* if (isPermissionGranted) {
      final contacts = await ContactsService.getContacts();
      for (var contact in contacts) {
        await ContactsService.deleteContact(contact);
      }
    } */
  }
}
