import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:meta/meta.dart';

part 'forget_cubit_state.dart';

class ForgetCubit extends Cubit<ForgetCubitState> {
  ForgetCubit() : super(ForgetCubitInitial());

  void forgetPassword({required String email}) async {
    emit(ForgetCubitLooding());
    try {
      dynamic data = await ApiServices().post(
          url: '${AssetsPath.apiLink}/api/auth/reset_password',
          body: {'Email': email});
      emit(ForgetCubitSuccess(data: data));
      print(data);
    } catch (e) {
      emit(ForgetCubitfailuer(error: e.toString()));
    }
  }
}
