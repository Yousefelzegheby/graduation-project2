part of 'material_cubit.dart';

sealed class MaterialCubitState extends Equatable {
  const MaterialCubitState();

  @override
  List<Object> get props => [];
}

final class MaterialInitial extends MaterialCubitState {}

final class MaterialLooding extends MaterialCubitState {}

final class MaterialFailuer extends MaterialCubitState {}

final class MaterialSuccess extends MaterialCubitState {}
