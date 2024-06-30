part of 'recomended_course_cubit.dart';

sealed class RecomendedCourseState extends Equatable {
  const RecomendedCourseState();

  @override
  List<Object> get props => [];
}

final class RecomendedCourseInitial extends RecomendedCourseState {}

final class RecomendedCourseLooding extends RecomendedCourseState {}

final class RecomendedCourseSuccess extends RecomendedCourseState {
  final dynamic data;

  const RecomendedCourseSuccess({required this.data});
}

final class RecomendedCourseFailuer extends RecomendedCourseState {
  final String error;

  const RecomendedCourseFailuer({required this.error});
}
