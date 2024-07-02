import 'package:equatable/equatable.dart';

class CourseInformation extends Equatable {
  final String? courseDescription;
  final List<String>? courseRequirements;

  const CourseInformation({
    this.courseDescription,
    this.courseRequirements,
  });

  factory CourseInformation.fromJson(Map<String, dynamic> json) {
    return CourseInformation(
      courseDescription: json['CourseDescription'] as String?,
      courseRequirements: json['CourseRequirements'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'CourseDescription': courseDescription,
        'CourseRequirements': courseRequirements,
      };

  @override
  List<Object?> get props => [courseDescription, courseRequirements];
}
