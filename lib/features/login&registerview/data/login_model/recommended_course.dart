import 'package:equatable/equatable.dart';

class RecommendedCourse extends Equatable {
  final String? courseName;
  final String? courseImage;
  final int? creditHours;

  const RecommendedCourse({
    this.courseName,
    this.courseImage,
    this.creditHours,
  });

  factory RecommendedCourse.fromJson(Map<String, dynamic> json) {
    return RecommendedCourse(
      courseName: json['CourseName'] as String?,
      courseImage: json['Course-image'] as String?,
      creditHours: json['Credit_hours'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'CourseName': courseName,
        'Course-image': courseImage,
        'Credit_hours': creditHours,
      };

  @override
  List<Object?> get props => [courseName, courseImage, creditHours];
}
