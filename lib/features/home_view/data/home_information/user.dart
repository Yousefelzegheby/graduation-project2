import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? profileImg;

  const User({this.id, this.name, this.profileImg});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        name: json['name'] as String?,
        profileImg: json['profile_img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'profile_img': profileImg,
      };

  @override
  List<Object?> get props => [id, name, profileImg];
}
