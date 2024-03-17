part of 'sign_up_cubit.dart';

@override
class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLooding extends SignUpState {}

final class SignUpFailuer extends SignUpState {
  final dynamic error;

  SignUpFailuer({required this.error});
}

final class SignUpSuccess extends SignUpState {
  final dynamic data;

  SignUpSuccess({required this.data});
}
