import 'package:equatable/equatable.dart';

import 'first.dart';
import 'fourth.dart';
import 'second.dart';
import 'third.dart';

class Courses extends Equatable {
  final List<First>? first;
  final List<Second>? second;
  final List<Third>? third;
  final List<Fourth>? fourth;

  const Courses({this.first, this.second, this.third, this.fourth});

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
        first: (json['first'] as List<dynamic>?)
            ?.map((e) => First.fromJson(e as Map<String, dynamic>))
            .toList(),
        second: (json['Second'] as List<dynamic>?)
            ?.map((e) => Second.fromJson(e as Map<String, dynamic>))
            .toList(),
        third: (json['third'] as List<dynamic>?)
            ?.map((e) => Third.fromJson(e as Map<String, dynamic>))
            .toList(),
        fourth: (json['fourth'] as List<dynamic>?)
            ?.map((e) => Fourth.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'first': first?.map((e) => e.toJson()).toList(),
        'Second': second?.map((e) => e.toJson()).toList(),
        'third': third?.map((e) => e.toJson()).toList(),
        'fourth': fourth?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [first, second, third, fourth];
}
