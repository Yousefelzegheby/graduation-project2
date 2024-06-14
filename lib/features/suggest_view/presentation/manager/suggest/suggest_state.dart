part of 'suggest_cubit.dart';

sealed class SuggestState extends Equatable {
  const SuggestState();

  @override
  List<Object> get props => [];
}

final class SuggestInitial extends SuggestState {}

final class SuggestLodding extends SuggestState {}

final class SuggestFailuer extends SuggestState {
  final String error;

  const SuggestFailuer({required this.error});
}

final class SuggestSuccess extends SuggestState {
  final dynamic data;

  const SuggestSuccess({required this.data});
}
