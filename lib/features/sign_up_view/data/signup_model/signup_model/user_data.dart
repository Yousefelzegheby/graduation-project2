import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final dynamic academicYear;
  final dynamic profileImg;

  const UserData({
    this.id,
    this.name,
    this.email,
    this.academicYear,
    this.profileImg,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        academicYear: json['academic_year'] as dynamic,
        profileImg: json['profile_img'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'academic_year': academicYear,
        'profile_img': profileImg,
      };

  @override
  List<Object?> get props => [id, name, email, academicYear, profileImg];
}
