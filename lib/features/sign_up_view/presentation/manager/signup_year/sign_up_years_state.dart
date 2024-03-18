part of 'sign_up_years_cubit.dart';

sealed class SignUpYearsState extends Equatable {
  const SignUpYearsState();

  @override
  List<Object> get props => [];
}

final class SignUpYearsInitial extends SignUpYearsState {}

final class SignUpYearfailuer extends SignUpYearsState {
  final String failuer;

  const SignUpYearfailuer({required this.failuer});
}

final class SignUpYearSuccess extends SignUpYearsState {
  final dynamic success;

  const SignUpYearSuccess({required this.success});
}

final class SignUpYearLooding extends SignUpYearsState {}
