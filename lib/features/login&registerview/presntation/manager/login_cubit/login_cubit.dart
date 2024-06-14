import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';

part 'login_cubit_state.dart';

class LogInCubit extends Cubit<LoginCubitState> {
  LogInCubit() : super(LogInCubitInitial());
  List<LoginModel> allproduct = [];
  Future<void> postPasswardAndEmail(
      {required String email, required String password}) async {
    emit(LogInCubitLooding());
    try {
      List<dynamic> data = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/auth/login",
          body: {'email': email, 'password': password});

      for (int i = 0; i < data.length; i++) {
        allproduct.add(LoginModel.fromJson(data[i]));
      }
      print(allproduct);

      emit(LogInCubitSucssess(data: allproduct));
    } catch (e) {
      emit(LogInCubitFailuer(error: e.toString()));
      print(e.toString());
    }
  }
}
