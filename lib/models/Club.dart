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



/** This is an auto generated class representing the Club type in your schema. */
@immutable
class Club extends Model {
  static const classType = const _ClubModelType();
  final String id;
  final String name;
  final String country;
  final List<Coaches> Coaches;
  final List<Teamleader> Teamleader;
  final List<Players> Players;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Club._internal(
      {@required this.id,
      @required this.name,
      @required this.country,
      this.Coaches,
      this.Teamleader,
      this.Players});

  factory Club(
      {String id,
      @required String name,
      @required String country,
      List<Coaches> Coaches,
      List<Teamleader> Teamleader,
      List<Players> Players}) {
    return Club._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        country: country,
        Coaches:
            Coaches != null ? List<Coaches>.unmodifiable(Coaches) : Coaches,
        Teamleader: Teamleader != null
            ? List<Teamleader>.unmodifiable(Teamleader)
            : Teamleader,
        Players:
            Players != null ? List<Players>.unmodifiable(Players) : Players);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Club &&
        id == other.id &&
        name == other.name &&
        country == other.country &&
        DeepCollectionEquality().equals(Coaches, other.Coaches) &&
        DeepCollectionEquality().equals(Teamleader, other.Teamleader) &&
        DeepCollectionEquality().equals(Players, other.Players);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Club {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$name" + ", ");
    buffer.write("country=" + "$country");
    buffer.write("}");

    return buffer.toString();
  }

  Club copyWith(
      {String id,
      String name,
      String country,
      List<Coaches> Coaches,
      List<Teamleader> Teamleader,
      List<Players> Players}) {
    return Club(
        id: id ?? this.id,
        name: name ?? this.name,
        country: country ?? this.country,
        Coaches: Coaches ?? this.Coaches,
        Teamleader: Teamleader ?? this.Teamleader,
        Players: Players ?? this.Players);
  }

  Club.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        country = json['country'],
        Coaches = json['Coaches'] is List
            ? (json['Coaches'] as List)
                .map((e) => Coaches.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        Teamleader = json['Teamleader'] is List
            ? (json['Teamleader'] as List)
                .map((e) =>
                    Teamleader.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        Players = json['Players'] is List
            ? (json['Players'] as List)
                .map((e) => Players.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'country': country,
        'Coaches': Coaches?.map((Coaches? e) => e?.toJson()).toList(),
        'Teamleader': Teamleader?.map((Teamleader? e) => e?.toJson()).toList(),
        'Players': Players?.map((Players? e) => e?.toJson()).toList()
      };

  static final QueryField ID = QueryField(fieldName: "club.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField COUNTRY = QueryField(fieldName: "country");
  static final QueryField COACHES = QueryField(
      fieldName: "Coaches",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Coaches).toString()));
  static final QueryField TEAMLEADER = QueryField(
      fieldName: "Teamleader",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Teamleader).toString()));
  static final QueryField PLAYERS = QueryField(
      fieldName: "Players",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Players).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Club";
    modelSchemaDefinition.pluralName = "Clubs";

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
        key: Club.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Club.COUNTRY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Club.COACHES,
        isRequired: false,
        ofModelName: (Coaches).toString(),
        associatedKey: Coaches.CLUBID));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Club.TEAMLEADER,
        isRequired: false,
        ofModelName: (Teamleader).toString(),
        associatedKey: Teamleader.CLUBID));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Club.PLAYERS,
        isRequired: false,
        ofModelName: (Players).toString(),
        associatedKey: Players.CLUBID));
  });
}

class _ClubModelType extends ModelType<Club> {
  const _ClubModelType();

  @override
  Club fromJson(Map<String, dynamic> jsonData) {
    return Club.fromJson(jsonData);
  }
}
