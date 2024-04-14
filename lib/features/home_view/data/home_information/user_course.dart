import 'package:equatable/equatable.dart';

class UserCourse extends Equatable {
  final String? courseName;
  final String? courseImage;
  final int? progress;

  const UserCourse({this.courseName, this.courseImage, this.progress});

  factory UserCourse.fromJson(Map<String, dynamic> json) => UserCourse(
        courseName: json['CourseName'] as String?,
        courseImage: json['Course-image'] as String?,
        progress: json['progress'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'CourseName': courseName,
        'Course-image': courseImage,
        'progress': progress,
      };

  @override
  List<Object?> get props => [courseName, courseImage, progress];
}
