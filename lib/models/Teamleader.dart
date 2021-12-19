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

/** This is an auto generated class representing the Teamleader type in your schema. */
@immutable
class Teamleader extends Model {
  static const classType = const _TeamleaderModelType();
  final String id;
  final String username;
  final String password;
  final String clubID;
  final List<Statistics> Statistics;
  final String untitledfield;
  final List<Coaches> Coaches;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Teamleader._internal(
      {@required this.id,
      @required this.username,
      this.password,
      this.clubID,
      this.Statistics,
      this.untitledfield,
      this.Coaches});

  factory Teamleader(
      {String id,
      @required String username,
      String password,
      String clubID,
      List<Statistics> Statistics,
      String untitledfield,
      List<Coaches> Coaches}) {
    return Teamleader._internal(
        id: id == null ? UUID.getUUID() : id,
        username: username,
        password: password,
        clubID: clubID,
        Statistics: Statistics != null
            ? List<Statistics>.unmodifiable(Statistics)
            : Statistics,
        untitledfield: untitledfield,
        Coaches:
            Coaches != null ? List<Coaches>.unmodifiable(Coaches) : Coaches);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Teamleader &&
        id == other.id &&
        username == other.username &&
        password == other.password &&
        clubID == other.clubID &&
        DeepCollectionEquality().equals(Statistics, other.Statistics) &&
        untitledfield == other.untitledfield &&
        DeepCollectionEquality().equals(Coaches, other.Coaches);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Teamleader {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$username" + ", ");
    buffer.write("password=" + "$password" + ", ");
    buffer.write("clubID=" + "$clubID" + ", ");
    buffer.write("untitledfield=" + "$untitledfield");
    buffer.write("}");

    return buffer.toString();
  }

  Teamleader copyWith(
      {String id,
      String username,
      String password,
      String clubID,
      List<Statistics> Statistics,
      String untitledfield,
      List<Coaches> Coaches}) {
    return Teamleader(
        id: id ?? this.id,
        username: username ?? this.username,
        password: password ?? this.password,
        clubID: clubID ?? this.clubID,
        Statistics: Statistics ?? this.Statistics,
        untitledfield: untitledfield ?? this.untitledfield,
        Coaches: Coaches ?? this.Coaches);
  }

  Teamleader.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        password = json['password'],
        clubID = json['clubID'],
        Statistics = json['Statistics'] is List
            ? (json['Statistics'] as List)
                .map((e) =>
                    Statistics.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        untitledfield = json['untitledfield'],
        Coaches = json['Coaches'] is List
            ? (json['Coaches'] as List)
                .map((e) => Coaches.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'password': password,
        'clubID': clubID,
        'Statistics': Statistics?.map((Statistics? e) => e?.toJson()).toList(),
        'untitledfield': untitledfield,
        'Coaches': Coaches?.map((Coaches? e) => e?.toJson()).toList()
      };

  static final QueryField ID = QueryField(fieldName: "teamleader.id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField PASSWORD = QueryField(fieldName: "password");
  static final QueryField CLUBID = QueryField(fieldName: "clubID");
  static final QueryField STATISTICS = QueryField(
      fieldName: "Statistics",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Statistics).toString()));
  static final QueryField UNTITLEDFIELD =
      QueryField(fieldName: "untitledfield");
  static final QueryField COACHES = QueryField(
      fieldName: "Coaches",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Coaches).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Teamleader";
    modelSchemaDefinition.pluralName = "Teamleaders";

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
        key: Teamleader.USERNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Teamleader.PASSWORD,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Teamleader.CLUBID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Teamleader.STATISTICS,
        isRequired: false,
        ofModelName: (Statistics).toString(),
        associatedKey: Statistics.TEAMLEADERID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Teamleader.UNTITLEDFIELD,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Teamleader.COACHES,
        isRequired: false,
        ofModelName: (Coaches).toString(),
        associatedKey: Coaches.TEAMLEADERID));
  });
}

class _TeamleaderModelType extends ModelType<Teamleader> {
  const _TeamleaderModelType();

  @override
  Teamleader fromJson(Map<String, dynamic> jsonData) {
    return Teamleader.fromJson(jsonData);
  }
}
