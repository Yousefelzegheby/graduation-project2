import 'package:equatable/equatable.dart';

import 'courses.dart';

class EnterGradeModel extends Equatable {
  final String? academicYear;
  final Courses? courses;

  const EnterGradeModel({this.academicYear, this.courses});

  factory EnterGradeModel.fromJson(Map<String, dynamic> json) {
    return EnterGradeModel(
      academicYear: json['academic_year'] as String?,
      courses: json['courses'] == null
          ? null
          : Courses.fromJson(json['courses'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'academic_year': academicYear,
        'courses': courses?.toJson(),
      };

  @override
  List<Object?> get props => [academicYear, courses];
}
