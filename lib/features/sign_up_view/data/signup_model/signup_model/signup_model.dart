import 'package:equatable/equatable.dart';

import 'user_data.dart';

class SignupModel extends Equatable {
  final String? accessToken;
  final UserData? userData;
  final List<dynamic>? userCourses;
  final List<dynamic>? recommendedCourses;

  const SignupModel({
    this.accessToken,
    this.userData,
    this.userCourses,
    this.recommendedCourses,
  });

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        accessToken: json['access_token'] as String?,
        userData: json['user_data'] == null
            ? null
            : UserData.fromJson(json['user_data'] as Map<String, dynamic>),
        userCourses: json['User_Courses'] as List<dynamic>?,
        recommendedCourses: json['Recommended_Courses'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'user_data': userData?.toJson(),
        'User_Courses': userCourses,
        'Recommended_Courses': recommendedCourses,
      };

  @override
  List<Object?> get props {
    return [
      accessToken,
      userData,
      userCourses,
      recommendedCourses,
    ];
  }
}
