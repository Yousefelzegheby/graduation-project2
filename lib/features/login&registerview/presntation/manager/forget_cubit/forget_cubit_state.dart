part of 'forget_cubit.dart';

@immutable
class ForgetCubitState {}

final class ForgetCubitInitial extends ForgetCubitState {}

final class ForgetCubitLooding extends ForgetCubitState {}

final class ForgetCubitSuccess extends ForgetCubitState {
  final dynamic data;
  ForgetCubitSuccess({required this.data});
}

final class ForgetCubitfailuer extends ForgetCubitState {
  final String error;
  ForgetCubitfailuer({required this.error});
}
