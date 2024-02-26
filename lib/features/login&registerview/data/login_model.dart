import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
	final String? accessToken;
	final int? id;

	const LoginModel({this.accessToken, this.id});

	factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
