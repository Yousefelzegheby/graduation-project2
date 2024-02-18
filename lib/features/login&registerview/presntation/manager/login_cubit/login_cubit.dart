import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/api_services.dart';

import 'package:meta/meta.dart';

part 'login_cubit_state.dart';

class LogInCubit extends Cubit<LoginCubitState> {
  LogInCubit() : super(LogInCubitInitial());

  String? password;

  void postPasswardAndEmail(
      {required String email, required String password}) async {
    emit(LogInCubitLooding());
    try {
      dynamic data = await ApiServices().post(
          url: 'https://acedmix.azurewebsites.net/index.php?type=STD&fun=Login',
          body: {'Email': email, 'Password': password});
       emit(LogInCubitSucssess(data: data));
    } catch (e) {
      emit(LogInCubitFailuer(error: 'there is an error please try again'));
    }
  }
}
