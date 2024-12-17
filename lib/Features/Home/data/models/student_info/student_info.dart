import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class StudentInfo extends Equatable {
  final dynamic message;
  final String? status;
  final Data? data;

  const StudentInfo({this.message, this.status, this.data});

  factory StudentInfo.fromMap(Map<String, dynamic> data) => StudentInfo(
        message: data['message'] as dynamic,
        status: data['status'] as String?,
        data: data['data'] == null
            ? null
            : Data.fromMap(data['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'message': message,
        'status': status,
        'data': data?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [StudentInfo].
  factory StudentInfo.fromJson(Map<String, dynamic> data) {
    return StudentInfo.fromMap(data);
  }

  /// `dart:convert`
  ///
  /// Converts [StudentInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [message, status, data];
}
