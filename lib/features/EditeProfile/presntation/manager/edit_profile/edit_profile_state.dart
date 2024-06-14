part of 'edit_profile_cubit.dart';

sealed class EditProfileState extends Equatable {
  const EditProfileState();

  @override
  List<Object> get props => [];
}

final class EditProfileInitial extends EditProfileState {}

final class EditProfileLodding extends EditProfileState {}

final class EditProfileFailuer extends EditProfileState {
  final String failuer;

  const EditProfileFailuer({required this.failuer});
}

final class EditProfileSuccess extends EditProfileState {
  final dynamic data;

  const EditProfileSuccess({required this.data});
}
