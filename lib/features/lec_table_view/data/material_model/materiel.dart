import 'package:equatable/equatable.dart';

class Materiel extends Equatable {
  final String? materialName;
  final String? materialLink;

  const Materiel({this.materialName, this.materialLink});

  factory Materiel.fromJson(Map<String, dynamic> json) => Materiel(
        materialName: json['Material_name'] as String?,
        materialLink: json['Material_link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'Material_name': materialName,
        'Material_link': materialLink,
      };

  @override
  List<Object?> get props => [materialName, materialLink];
}
