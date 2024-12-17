import 'dart:convert';

import 'package:equatable/equatable.dart';

class Activity extends Equatable {
  final String? name;
  final String? date;

  const Activity({this.name, this.date});

  factory Activity.fromMap(Map<String, dynamic> data) => Activity(
        name: data['name'] as String?,
        date: data['date'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'date': date,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Activity].
  factory Activity.fromJson(String data) {
    return Activity.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Activity] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [name, date];
}
