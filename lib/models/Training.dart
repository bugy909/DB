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

/** This is an auto generated class representing the Training type in your schema. */
@immutable
class Training extends Model {
  static const classType = const _TrainingModelType();
  final String id;
  final TemporalDate date;
  final String type;
  final String coachesID;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Training._internal(
      {@required this.id,
      @required this.date,
      @required this.type,
      this.coachesID});

  factory Training(
      {String id,
      @required TemporalDate date,
      @required String type,
      String coachesID}) {
    return Training._internal(
        id: id == null ? UUID.getUUID() : id,
        date: date,
        type: type,
        coachesID: coachesID);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Training &&
        id == other.id &&
        date == other.date &&
        type == other.type &&
        coachesID == other.coachesID;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Training {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("date=" + (date != null ? date.format() : "null") + ", ");
    buffer.write("type=" + "$type" + ", ");
    buffer.write("coachesID=" + "$coachesID");
    buffer.write("}");

    return buffer.toString();
  }

  Training copyWith(
      {String id, TemporalDate date, String type, String coachesID}) {
    return Training(
        id: id ?? this.id,
        date: date ?? this.date,
        type: type ?? this.type,
        coachesID: coachesID ?? this.coachesID);
  }

  Training.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date =
            json['date'] != null ? TemporalDate.fromString(json['date']) : null,
        type = json['type'],
        coachesID = json['coachesID'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'date': date?.format(), 'type': type, 'coachesID': coachesID};

  static final QueryField ID = QueryField(fieldName: "training.id");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField COACHESID = QueryField(fieldName: "coachesID");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Training";
    modelSchemaDefinition.pluralName = "Trainings";

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
        key: Training.DATE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Training.TYPE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Training.COACHESID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _TrainingModelType extends ModelType<Training> {
  const _TrainingModelType();

  @override
  Training fromJson(Map<String, dynamic> jsonData) {
    return Training.fromJson(jsonData);
  }
}
