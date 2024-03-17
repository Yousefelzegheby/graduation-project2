import 'package:equatable/equatable.dart';

class SignupModel extends Equatable {
  final String? accessToken;
  final int? id;

  const SignupModel({this.accessToken, this.id});

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        accessToken: json['access_token'] as String?,
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'id': id,
      };

  @override
  List<Object?> get props => [accessToken, id];
}
