part of 'post_grade_cubit.dart';

sealed class PostGradeState extends Equatable {
  const PostGradeState();

  @override
  List<Object> get props => [];
}

final class PostGradeInitial extends PostGradeState {}

final class PostGradeSuccess extends PostGradeState {
  final dynamic data;

  const PostGradeSuccess({required this.data});
}

final class PostGradeLooding extends PostGradeState {}

final class PostGradefailuer extends PostGradeState {}
