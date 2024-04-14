import 'package:equatable/equatable.dart';

import 'user.dart';
import 'user_course.dart';

class HomeInformation extends Equatable {
  final User? user;
  final List<UserCourse>? userCourses;

  const HomeInformation({this.user, this.userCourses});

  factory HomeInformation.fromJson(Map<String, dynamic> json) {
    return HomeInformation(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userCourses: (json['User_Courses'] as List<dynamic>?)
          ?.map((e) => UserCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
        'User_Courses': userCourses?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [user, userCourses];
}
