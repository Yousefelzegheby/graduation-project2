import 'package:equatable/equatable.dart';

import 'datum.dart';

class MaterialModel extends Equatable {
	final List<Datum>? data;

	const MaterialModel({this.data});

	factory MaterialModel.fromJson(Map<String, dynamic> json) => MaterialModel(
				data: (json['data'] as List<dynamic>?)
						?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'data': data?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [data];
}
