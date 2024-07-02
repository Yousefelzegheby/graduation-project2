import 'package:equatable/equatable.dart';

import 'output.dart';

class RecommendedModel extends Equatable {
  final List<Output>? output;

  const RecommendedModel({this.output});

  factory RecommendedModel.fromJson(Map<String, dynamic> json) {
    return RecommendedModel(
      output: (json['output'] as List<dynamic>?)
          ?.map((e) => Output.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'output': output?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [output];
}
