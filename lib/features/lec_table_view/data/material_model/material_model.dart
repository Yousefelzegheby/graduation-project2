import 'package:equatable/equatable.dart';

import 'course_information.dart';
import 'materiel.dart';

class MaterialModel extends Equatable {
  final CourseInformation? courseInformation;
  final List<Materiel>? materiel;

  const MaterialModel({this.courseInformation, this.materiel});

  factory MaterialModel.fromJson(Map<String, dynamic> json) => MaterialModel(
        courseInformation: json['CourseInformation'] == null
            ? null
            : CourseInformation.fromJson(
                json['CourseInformation'] as Map<String, dynamic>),
        materiel: (json['Materiel'] as List<dynamic>?)
            ?.map((e) => Materiel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'CourseInformation': courseInformation?.toJson(),
        'Materiel': materiel?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [courseInformation, materiel];
}
