import 'dart:convert';

import 'errors.dart';

class ErrorMassageModel {
  String? message;
  Errors? errors;

  ErrorMassageModel({this.message, this.errors});

  @override
  String toString() {
    return 'ErrorMassageModel(message: $message, errors: $errors)';
  }

  factory ErrorMassageModel.fromMap(Map<String, dynamic> data) {
    return ErrorMassageModel(
      message: data['message'] as String?,
      errors: data['errors'] == null
          ? null
          : Errors.fromMap(data['errors'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
        'errors': errors?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ErrorMassageModel].
  factory ErrorMassageModel.fromJson(Map<String, dynamic> data) {
    return ErrorMassageModel.fromMap(data);
  }

  /// `dart:convert`
  ///
  /// Converts [ErrorMassageModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
