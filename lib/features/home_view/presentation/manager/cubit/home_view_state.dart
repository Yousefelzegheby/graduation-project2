part of 'home_view_cubit.dart';

sealed class HomeViewState extends Equatable {
  const HomeViewState();

  @override
  List<Object> get props => [];
}

final class HomeViewInitial extends HomeViewState {}

final class HomeViewLooding extends HomeViewState {}

final class HomeViewSucsess extends HomeViewState {}

final class HomeViewFailuer extends HomeViewState {}
