part of 'gpa_cubit.dart';

sealed class GpaState extends Equatable {
  const GpaState();

  @override
  List<Object> get props => [];
}

final class GpaInitial extends GpaState {}

final class GpaLooding extends GpaState {}

final class GpaSuccess extends GpaState {}

final class GpaFailuer extends GpaState {}
