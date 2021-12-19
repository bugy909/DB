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

/** This is an auto generated class representing the Admin type in your schema. */
@immutable
class Admin extends Model {
  static const classType = const _AdminModelType();
  final String id;
  final String username;
  final String password;
  final int rank;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Admin._internal(
      {@required this.id,
      @required this.username,
      @required this.password,
      @required this.rank});

  factory Admin(
      {String id,
      @required String username,
      @required String password,
      @required int rank}) {
    return Admin._internal(
        id: id == null ? UUID.getUUID() : id,
        username: username,
        password: password,
        rank: rank);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Admin &&
        id == other.id &&
        username == other.username &&
        password == other.password &&
        rank == other.rank;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Admin {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("username=" + "$username" + ", ");
    buffer.write("password=" + "$password" + ", ");
    buffer.write("rank=" + (rank != null ? rank.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Admin copyWith({String id, String username, String password, int rank}) {
    return Admin(
        id: id ?? this.id,
        username: username ?? this.username,
        password: password ?? this.password,
        rank: rank ?? this.rank);
  }

  Admin.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        password = json['password'],
        rank = (json['rank'] as num)?.toInt();

  Map<String, dynamic> toJson() =>
      {'id': id, 'username': username, 'password': password, 'rank': rank};

  static final QueryField ID = QueryField(fieldName: "admin.id");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField PASSWORD = QueryField(fieldName: "password");
  static final QueryField RANK = QueryField(fieldName: "rank");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Admin";
    modelSchemaDefinition.pluralName = "Admins";

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
        key: Admin.USERNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Admin.PASSWORD,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Admin.RANK,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));
  });
}

class _AdminModelType extends ModelType<Admin> {
  const _AdminModelType();

  @override
  Admin fromJson(Map<String, dynamic> jsonData) {
    return Admin.fromJson(jsonData);
  }
}
