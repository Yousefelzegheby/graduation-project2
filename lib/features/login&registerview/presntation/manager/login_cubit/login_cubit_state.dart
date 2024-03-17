part of 'login_cubit.dart';

@immutable
class LoginCubitState {}

final class LogInCubitInitial extends LoginCubitState {}

final class LogInCubitLooding extends LoginCubitState {}

final class LogInCubitSucssess extends LoginCubitState {
  final dynamic data;
  LogInCubitSucssess({required this.data});
}

final class LogInCubitFailuer extends LoginCubitState {
  final String? error;
  LogInCubitFailuer({this.error});
}
