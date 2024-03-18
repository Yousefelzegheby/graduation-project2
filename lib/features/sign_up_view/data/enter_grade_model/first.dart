import 'package:equatable/equatable.dart';

class First extends Equatable {
  final String? courseName;
  String? grade;

  First({this.courseName, this.grade});

  factory First.fromJson(Map<String, dynamic> json) => First(
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
