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

/** This is an auto generated class representing the Players type in your schema. */

@immutable
class Players extends Model {
  static const classType = const _PlayersModelType();
  final String id;
  final String firstname;
  final String lastname;
  final TemporalDate birthdate;
  final String clubID;
  final List<CoachesPlayers> coachess;
  final List<Statistics> Statistics;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Players._internal(
      {@required this.id,
      @required this.firstname,
      this.lastname,
      this.birthdate,
      this.clubID,
      this.coachess,
      this.Statistics});

  factory Players(
      {String id,
      @required String firstname,
      String lastname,
      TemporalDate birthdate,
      String clubID,
      List<CoachesPlayers> coachess,
      List<Statistics> Statistics}) {
    return Players._internal(
        id: id == null ? UUID.getUUID() : id,
        firstname: firstname,
        lastname: lastname,
        birthdate: birthdate,
        clubID: clubID,
        coachess: coachess != null
            ? List<CoachesPlayers>.unmodifiable(coachess)
            : coachess,
        Statistics: Statistics != null
            ? List<Statistics>.unmodifiable(Statistics)
            : Statistics);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Players &&
        id == other.id &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        birthdate == other.birthdate &&
        clubID == other.clubID &&
        DeepCollectionEquality().equals(coachess, other.coachess) &&
        DeepCollectionEquality().equals(Statistics, other.Statistics);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Players {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstname=" + "$firstname" + ", ");
    buffer.write("lastname=" + "$lastname" + ", ");
    buffer.write("birthdate=" +
        (birthdate != null ? birthdate.format() : "null") +
        ", ");
    buffer.write("clubID=" + "$clubID");
    buffer.write("}");

    return buffer.toString();
  }

  Players copyWith(
      {String id,
      String firstname,
      String lastname,
      TemporalDate birthdate,
      String clubID,
      List<CoachesPlayers> coachess,
      List<Statistics> Statistics}) {
    return Players(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        birthdate: birthdate ?? this.birthdate,
        clubID: clubID ?? this.clubID,
        coachess: coachess ?? this.coachess,
        Statistics: Statistics ?? this.Statistics);
  }

  Players.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        firstname = json['firstname'],
        lastname = json['lastname'],
        birthdate = json['birthdate'] != null
            ? TemporalDate.fromString(json['birthdate'])
            : null,
        clubID = json['clubID'],
        coachess = json['coachess'] is List
            ? (json['coachess'] as List)
                .map((e) =>
                    CoachesPlayers.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        Statistics = json['Statistics'] is List
            ? (json['Statistics'] as List)
                .map((e) =>
                    Statistics.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstname': firstname,
        'lastname': lastname,
        'birthdate': birthdate?.format(),
        'clubID': clubID,
        'coachess': coachess?.map((CoachesPlayers? e) => e?.toJson()).toList(),
        'Statistics': Statistics?.map((Statistics? e) => e?.toJson()).toList()
      };

  static final QueryField ID = QueryField(fieldName: "players.id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstname");
  static final QueryField LASTNAME = QueryField(fieldName: "lastname");
  static final QueryField BIRTHDATE = QueryField(fieldName: "birthdate");
  static final QueryField CLUBID = QueryField(fieldName: "clubID");
  static final QueryField COACHESS = QueryField(
      fieldName: "coachess",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CoachesPlayers).toString()));
  static final QueryField STATISTICS = QueryField(
      fieldName: "Statistics",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Statistics).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Players";
    modelSchemaDefinition.pluralName = "Players";

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
        key: Players.FIRSTNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Players.LASTNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Players.BIRTHDATE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Players.CLUBID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Players.COACHESS,
        isRequired: false,
        ofModelName: (CoachesPlayers).toString(),
        associatedKey: CoachesPlayers.PLAYERS));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Players.STATISTICS,
        isRequired: false,
        ofModelName: (Statistics).toString(),
        associatedKey: Statistics.PLAYERSID));
  });
}

class _PlayersModelType extends ModelType<Players> {
  const _PlayersModelType();

  @override
  Players fromJson(Map<String, dynamic> jsonData) {
    return Players.fromJson(jsonData);
  }
}
