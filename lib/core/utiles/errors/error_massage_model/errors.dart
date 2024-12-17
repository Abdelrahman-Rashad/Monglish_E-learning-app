import 'dart:convert';

class Errors {
  List<dynamic>? email;

  Errors({this.email});

  @override
  String toString() => 'Errors(email: $email)';

  factory Errors.fromMap(Map<String, dynamic> data) => Errors(
        email: data['email'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'email': email,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Errors].
  factory Errors.fromJson(String data) {
    return Errors.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Errors] to a JSON string.
  String toJson() => json.encode(toMap());
}
