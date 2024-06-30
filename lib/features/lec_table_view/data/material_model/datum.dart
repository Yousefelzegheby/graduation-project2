import 'package:equatable/equatable.dart';

class Datum extends Equatable {
	final String? materialName;
	final String? materialLink;

	const Datum({this.materialName, this.materialLink});

	factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
