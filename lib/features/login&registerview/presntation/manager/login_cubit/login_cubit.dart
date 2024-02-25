import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/features/login&registerview/data/login_model.dart';

part 'login_cubit_state.dart';

class LogInCubit extends Cubit<LoginCubitState> {
  LogInCubit() : super(LogInCubitInitial());

  String? password;
  String? email;
  void postPasswardAndEmail(
      {required String email, required String password}) async {
    emit(LogInCubitLooding());
    try {
      LoginModel data = await ApiServices().post(
          url: '197.134.254.88:8000/api/auth/login',
          body: {'Email': email, 'Password': password});
      emit(LogInCubitSucssess(data: data));
    } catch (e) {
      emit(LogInCubitFailuer(error: 'there is an error please try again'));
    }
  }
}
