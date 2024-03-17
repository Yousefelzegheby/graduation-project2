import 'package:equatable/equatable.dart';

class Second extends Equatable {
  final String? courseName;
  String? grade;

  Second({this.courseName, this.grade});

  factory Second.fromJson(Map<String, dynamic> json) => Second(
        courseName: json['CourseName'] as String?,
        grade: json['grade'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'CourseName': courseName,
        'grade': grade,
      };

  @override
  List<Object?> get props => [courseName, grade];
}
