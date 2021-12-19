/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Coaches type in your schema. */
@immutable
class Coaches extends Model {
  static const classType = const _CoachesModelType();
  final String id;
  final String username;
  final String password;
  final TemporalDate created;
  final String clubID;
  final List<CoachesPlayers> Players;
  final List<Training> Trainings;
  final String teamleaderID;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Coaches._internal(
      {@required this.id,
      @required this.username,
      @required this.password,
      this.created,
      this.clubID,
      this.Players,
      this.Trainings,
      this.teamleaderID});

  factory Coaches(
      {String id,
      @required String username,
      @required String password,
      TemporalDate created,
      String clubID,
      List<CoachesPlayers> Players,
      List<Training> Trainings,
      String teamleaderID}) {
    return Coaches._internal(
        id: id == null ? UUID.getUUID() : id,
        username: username,
        password: password,
        created: created,
        clubID: clubID,
        Players: Players != null
            ? List<CoachesPlayers>.unmodifiable(Players)
            : Players,
        Trainings: Trainings != null
            ? List<Training>.unmodifiable(Trainings)
            : Trainings,
        teamleaderID: teamleaderID);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coaches &&
        id == other.id &&
        username == other.username &&
        password == other.password &&
        created == other.created &&
        clubID == other.clubID &&
        DeepCollectionEquality().equals(Players, other.Players) &&
        DeepCollectionEquality().equals(Trainings, other.Trainings) &&
        teamleaderID == other.teamleaderID;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Coaches {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$username" + ", ");
    buffer.write("password=" + "$password" + ", ");
    buffer.write(
        "created=" + (created != null ? created.format() : "null") + ", ");
    buffer.write("clubID=" + "$clubID" + ", ");
    buffer.write("teamleaderID=" + "$teamleaderID");
    buffer.write("}");

    return buffer.toString();
  }

  Coaches copyWith(
      {String id,
      String username,
      String password,
      TemporalDate created,
      String clubID,
      List<CoachesPlayers> Players,
      List<Training> Trainings,
      String teamleaderID}) {
    return Coaches(
        id: id ?? this.id,
        username: username ?? this.username,
        password: password ?? this.password,
        created: created ?? this.created,
        clubID: clubID ?? this.clubID,
        Players: Players ?? this.Players,
        Trainings: Trainings ?? this.Trainings,
        teamleaderID: teamleaderID ?? this.teamleaderID);
  }

  Coaches.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        password = json['password'],
        created = json['created'] != null
            ? TemporalDate.fromString(json['created'])
            : null,
        clubID = json['clubID'],
        Players = json['Players'] is List
            ? (json['Players'] as List)
                .map((e) =>
                    CoachesPlayers.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        Trainings = json['Trainings'] is List
            ? (json['Trainings'] as List)
                .map((e) => Training.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        teamleaderID = json['teamleaderID'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'password': password,
        'created': created?.format(),
        'clubID': clubID,
        'Players': Players?.map((CoachesPlayers? e) => e?.toJson()).toList(),
        'Trainings': Trainings?.map((Training? e) => e?.toJson()).toList(),
        'teamleaderID': teamleaderID
      };

  static final QueryField ID = QueryField(fieldName: "coaches.id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField PASSWORD = QueryField(fieldName: "password");
  static final QueryField CREATED = QueryField(fieldName: "created");
  static final QueryField CLUBID = QueryField(fieldName: "clubID");
  static final QueryField PLAYERS = QueryField(
      fieldName: "Players",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CoachesPlayers).toString()));
  static final QueryField TRAININGS = QueryField(
      fieldName: "Trainings",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Training).toString()));
  static final QueryField TEAMLEADERID = QueryField(fieldName: "teamleaderID");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Coaches";
    modelSchemaDefinition.pluralName = "Coaches";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Coaches.USERNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Coaches.PASSWORD,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Coaches.CREATED,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Coaches.CLUBID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Coaches.PLAYERS,
        isRequired: false,
        ofModelName: (CoachesPlayers).toString(),
        associatedKey: CoachesPlayers.COACHES));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Coaches.TRAININGS,
        isRequired: false,
        ofModelName: (Training).toString(),
        associatedKey: Training.COACHESID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Coaches.TEAMLEADERID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CoachesModelType extends ModelType<Coaches> {
  const _CoachesModelType();

  @override
  Coaches fromJson(Map<String, dynamic> jsonData) {
    return Coaches.fromJson(jsonData);
  }
}
