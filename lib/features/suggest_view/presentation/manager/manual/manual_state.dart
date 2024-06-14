part of 'manual_cubit.dart';

sealed class ManualState extends Equatable {
  const ManualState();

  @override
  List<Object> get props => [];
}

final class ManualInitial extends ManualState {}

final class ManualLooding extends ManualState {}

final class ManualSuccess extends ManualState {
  final dynamic data;

  const ManualSuccess({required this.data});
}

final class ManualFailuer extends ManualState {
  final String error;

  const ManualFailuer({required this.error});
}
