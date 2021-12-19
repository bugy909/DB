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
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the CoachesPlayers type in your schema. */
@immutable
class CoachesPlayers extends Model {
  static const classType = const _CoachesPlayersModelType();
  final String id;
  final Coaches coaches;
  final Players players;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const CoachesPlayers._internal(
      {@required this.id, @required this.coaches, @required this.players});

  factory CoachesPlayers(
      {String id, @required Coaches coaches, @required Players players}) {
    return CoachesPlayers._internal(
        id: id == null ? UUID.getUUID() : id,
        coaches: coaches,
        players: players);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoachesPlayers &&
        id == other.id &&
        coaches == other.coaches &&
        players == other.players;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CoachesPlayers {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write(
        "coaches=" + (coaches != null ? coaches.toString() : "null") + ", ");
    buffer.write("players=" + (players != null ? players.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CoachesPlayers copyWith({String id, Coaches coaches, Players players}) {
    return CoachesPlayers(
        id: id ?? this.id,
        coaches: coaches ?? this.coaches,
        players: players ?? this.players);
  }

  CoachesPlayers.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        coaches = json['coaches'] != null
            ? Coaches.fromJson(new Map<String, dynamic>.from(json['coaches']))
            : null,
        players = json['players'] != null
            ? Players.fromJson(new Map<String, dynamic>.from(json['players']))
            : null;

  Map<String, dynamic> toJson() =>
      {'id': id, 'coaches': coaches?.toJson(), 'players': players?.toJson()};

  static final QueryField ID = QueryField(fieldName: "coachesPlayers.id");
  static final QueryField COACHES = QueryField(
      fieldName: "coaches",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Coaches).toString()));
  static final QueryField PLAYERS = QueryField(
      fieldName: "players",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Players).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CoachesPlayers";
    modelSchemaDefinition.pluralName = "CoachesPlayers";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CoachesPlayers.COACHES,
        isRequired: true,
        targetName: "coachesID",
        ofModelName: (Coaches).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CoachesPlayers.PLAYERS,
        isRequired: true,
        targetName: "playersID",
        ofModelName: (Players).toString()));
  });
}

class _CoachesPlayersModelType extends ModelType<CoachesPlayers> {
  const _CoachesPlayersModelType();

  @override
  CoachesPlayers fromJson(Map<String, dynamic> jsonData) {
    return CoachesPlayers.fromJson(jsonData);
  }
}
