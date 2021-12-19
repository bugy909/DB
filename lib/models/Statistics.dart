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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Statistics type in your schema. */
@immutable
class Statistics extends Model {
  static const classType = const _StatisticsModelType();
  final String id;
  final double pace;
  final double acceleration;
  final int agility;
  final int jumping_reach;
  final int dribbling;
  final int short_passing;
  final int long_passing;
  final int stamina;
  final int shooting;
  final String playersID;
  final String teamleaderID;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Statistics._internal(
      {@required this.id,
      this.pace,
      this.acceleration,
      this.agility,
      this.jumping_reach,
      this.dribbling,
      this.short_passing,
      this.long_passing,
      this.stamina,
      this.shooting,
      this.playersID,
      this.teamleaderID});

  factory Statistics(
      {String id,
      double pace,
      double acceleration,
      int agility,
      int jumping_reach,
      int dribbling,
      int short_passing,
      int long_passing,
      int stamina,
      int shooting,
      String playersID,
      String teamleaderID}) {
    return Statistics._internal(
        id: id == null ? UUID.getUUID() : id,
        pace: pace,
        acceleration: acceleration,
        agility: agility,
        jumping_reach: jumping_reach,
        dribbling: dribbling,
        short_passing: short_passing,
        long_passing: long_passing,
        stamina: stamina,
        shooting: shooting,
        playersID: playersID,
        teamleaderID: teamleaderID);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Statistics &&
        id == other.id &&
        pace == other.pace &&
        acceleration == other.acceleration &&
        agility == other.agility &&
        jumping_reach == other.jumping_reach &&
        dribbling == other.dribbling &&
        short_passing == other.short_passing &&
        long_passing == other.long_passing &&
        stamina == other.stamina &&
        shooting == other.shooting &&
        playersID == other.playersID &&
        teamleaderID == other.teamleaderID;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Statistics {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("pace=" + (pace != null ? pace.toString() : "null") + ", ");
    buffer.write("acceleration=" +
        (acceleration != null ? acceleration.toString() : "null") +
        ", ");
    buffer.write(
        "agility=" + (agility != null ? agility.toString() : "null") + ", ");
    buffer.write("jumping_reach=" +
        (jumping_reach != null ? jumping_reach.toString() : "null") +
        ", ");
    buffer.write("dribbling=" +
        (dribbling != null ? dribbling.toString() : "null") +
        ", ");
    buffer.write("short_passing=" +
        (short_passing != null ? short_passing.toString() : "null") +
        ", ");
    buffer.write("long_passing=" +
        (long_passing != null ? long_passing.toString() : "null") +
        ", ");
    buffer.write(
        "stamina=" + (stamina != null ? stamina.toString() : "null") + ", ");
    buffer.write(
        "shooting=" + (shooting != null ? shooting.toString() : "null") + ", ");
    buffer.write("playersID=" + "$playersID" + ", ");
    buffer.write("teamleaderID=" + "$teamleaderID");
    buffer.write("}");

    return buffer.toString();
  }

  Statistics copyWith(
      {String id,
      double pace,
      double acceleration,
      int agility,
      int jumping_reach,
      int dribbling,
      int short_passing,
      int long_passing,
      int stamina,
      int shooting,
      String playersID,
      String teamleaderID}) {
    return Statistics(
        id: id ?? this.id,
        pace: pace ?? this.pace,
        acceleration: acceleration ?? this.acceleration,
        agility: agility ?? this.agility,
        jumping_reach: jumping_reach ?? this.jumping_reach,
        dribbling: dribbling ?? this.dribbling,
        short_passing: short_passing ?? this.short_passing,
        long_passing: long_passing ?? this.long_passing,
        stamina: stamina ?? this.stamina,
        shooting: shooting ?? this.shooting,
        playersID: playersID ?? this.playersID,
        teamleaderID: teamleaderID ?? this.teamleaderID);
  }

  Statistics.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        pace = (json['pace'] as num)?.toDouble(),
        acceleration = (json['acceleration'] as num)?.toDouble(),
        agility = (json['agility'] as num)?.toInt(),
        jumping_reach = (json['jumping_reach'] as num)?.toInt(),
        dribbling = (json['dribbling'] as num)?.toInt(),
        short_passing = (json['short_passing'] as num)?.toInt(),
        long_passing = (json['long_passing'] as num)?.toInt(),
        stamina = (json['stamina'] as num)?.toInt(),
        shooting = (json['shooting'] as num)?.toInt(),
        playersID = json['playersID'],
        teamleaderID = json['teamleaderID'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'pace': pace,
        'acceleration': acceleration,
        'agility': agility,
        'jumping_reach': jumping_reach,
        'dribbling': dribbling,
        'short_passing': short_passing,
        'long_passing': long_passing,
        'stamina': stamina,
        'shooting': shooting,
        'playersID': playersID,
        'teamleaderID': teamleaderID
      };

  static final QueryField ID = QueryField(fieldName: "statistics.id");
  static final QueryField PACE = QueryField(fieldName: "pace");
  static final QueryField ACCELERATION = QueryField(fieldName: "acceleration");
  static final QueryField AGILITY = QueryField(fieldName: "agility");
  static final QueryField JUMPING_REACH =
      QueryField(fieldName: "jumping_reach");
  static final QueryField DRIBBLING = QueryField(fieldName: "dribbling");
  static final QueryField SHORT_PASSING =
      QueryField(fieldName: "short_passing");
  static final QueryField LONG_PASSING = QueryField(fieldName: "long_passing");
  static final QueryField STAMINA = QueryField(fieldName: "stamina");
  static final QueryField SHOOTING = QueryField(fieldName: "shooting");
  static final QueryField PLAYERSID = QueryField(fieldName: "playersID");
  static final QueryField TEAMLEADERID = QueryField(fieldName: "teamleaderID");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Statistics";
    modelSchemaDefinition.pluralName = "Statistics";

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
        key: Statistics.PACE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.ACCELERATION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.AGILITY,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.JUMPING_REACH,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.DRIBBLING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.SHORT_PASSING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.LONG_PASSING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.STAMINA,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.SHOOTING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.PLAYERSID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Statistics.TEAMLEADERID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _StatisticsModelType extends ModelType<Statistics> {
  const _StatisticsModelType();

  @override
  Statistics fromJson(Map<String, dynamic> jsonData) {
    return Statistics.fromJson(jsonData);
  }
}
