import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';
import 'permission.dart';
import 'role.dart';

class Login extends Equatable {
  final Data? data;
  final String? token;
  final List<Permission>? permissions;
  final List<Role>? roles;

  const Login({this.data, this.token, this.permissions, this.roles});

  factory Login.fromMap(Map<String, dynamic> data) => Login(
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
        token: data['token'] as String?,
        permissions: (data['permissions'] as List<dynamic>?)
            ?.map((e) => Permission.fromMap(e as Map<String, dynamic>))
            .toList(),
        roles: (data['roles'] as List<dynamic>?)
            ?.map((e) => Role.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'data': data?.toMap(),
        'token': token,
        'permissions': permissions?.map((e) => e.toMap()).toList(),
        'roles': roles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Login].
  factory Login.fromJson(Map<String, dynamic> data) {
    return Login.fromMap(data);
  }

  /// `dart:convert`
  ///
  /// Converts [Login] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [data, token, permissions, roles];
}
