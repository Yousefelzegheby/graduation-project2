import 'package:equatable/equatable.dart';

class Fourth extends Equatable {
  final String? courseName;
  String? grade;

  Fourth({this.courseName, this.grade});

  factory Fourth.fromJson(Map<String, dynamic> json) => Fourth(
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
