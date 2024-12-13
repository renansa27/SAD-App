// This file is "main.dart"
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sad_app/app/modules/home/models/professional/professional_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'teams_model.freezed.dart';
// optional: Since our TeamsModel class is serializable, we must add this line.
// But if TeamsModel was not serializable, we could skip it.
part 'teams_model.g.dart';

@freezed
class TeamsModel with _$TeamsModel {
  const factory TeamsModel({
    required String? id,
    required String? name,
    required List<ProfessionalModel>? professionals,
  }) = _TeamsModel;

  factory TeamsModel.fromJson(Map<String, Object?> json) =>
      _$TeamsModelFromJson(json);

  factory TeamsModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return TeamsModel(
      id: doc.id,
      name: data['name'] ?? '',
      professionals: (data['professionals'] as List<dynamic>?)
          ?.map((e) => ProfessionalModel.fromFirestore(e as DocumentSnapshot))
          .toList(),
    );
  }

//factory TeamsModel.fromFirestore(DocumentSnapshot doc) { Map data = doc.data() as Map; return TeamsModel( id: doc.id, name: data['name'] ?? '', );
}