import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String? accessToken;
  final int? id;

  const LoginModel({this.accessToken, this.id});

  factory LoginModel.fromMap(Map<String, dynamic> data) => LoginModel(
        accessToken: data['access_token'] as String?,
        id: data['id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'access_token': accessToken,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LoginModel].
  factory LoginModel.fromJson(String data) {
    return LoginModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LoginModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [accessToken, id];
}
