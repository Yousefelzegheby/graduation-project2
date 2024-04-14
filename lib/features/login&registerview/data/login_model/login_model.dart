import 'package:equatable/equatable.dart';

import 'recommended_course.dart';
import 'user_course.dart';
import 'user_data.dart';

class LoginModel extends Equatable {
  final String? accessToken;
  final UserData? userData;
  final List<UserCourse>? userCourses;
  final List<RecommendedCourse>? recommendedCourses;

  const LoginModel({
    this.accessToken,
    this.userData,
    this.userCourses,
    this.recommendedCourses,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        accessToken: json['access_token'] as String?,
        userData: json['user_data'] == null
            ? null
            : UserData.fromJson(json['user_data'] as Map<String, dynamic>),
        userCourses: (json['User_Courses'] as List<dynamic>?)
            ?.map((e) => UserCourse.fromJson(e as Map<String, dynamic>))
            .toList(),
        recommendedCourses: (json['Recommended_Courses'] as List<dynamic>?)
            ?.map((e) => RecommendedCourse.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'user_data': userData?.toJson(),
        'User_Courses': userCourses?.map((e) => e.toJson()).toList(),
        'Recommended_Courses':
            recommendedCourses?.map((e) => e.toJson()).toList(),
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
