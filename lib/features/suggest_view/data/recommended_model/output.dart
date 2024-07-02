import 'package:equatable/equatable.dart';

class Output extends Equatable {
  final String? courseName;
  final String? predictedGpa;
  final int? credits;
  final int? students;

  const Output({
    this.courseName,
    this.predictedGpa,
    this.credits,
    this.students,
  });

  factory Output.fromJson(Map<String, dynamic> json) => Output(
        courseName: json['course_name'] as String?,
        predictedGpa: json['predicted_gpa'] as String?,
        credits: json['credits'] as int?,
        students: json['students'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'course_name': courseName,
        'predicted_gpa': predictedGpa,
        'credits': credits,
        'students': students,
      };

  @override
  List<Object?> get props {
    return [
      courseName,
      predictedGpa,
      credits,
      students,
    ];
  }
}
