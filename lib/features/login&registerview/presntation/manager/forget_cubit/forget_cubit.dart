import 'package:bloc/bloc.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:meta/meta.dart';

part 'forget_cubit_state.dart';

class ForgetCubit extends Cubit<ForgetCubitState> {
  ForgetCubit() : super(ForgetCubitInitial());
  void forgetPassword(
      {required String studintCode,
      required String id,
      required String email}) async {
    emit(ForgetCubitLooding());
    try {
      dynamic data = await ApiServices().post(
          url: 'https://acedmix.azurewebsites.net/index.php?type=STD&fun=Reset',
          body: {'STD_ID': studintCode, 'NID': id, 'Email': email});
      emit(ForgetCubitSuccess(data: data));
      print(data);
    } catch (e) {
      emit(ForgetCubitfailuer(error: e.toString()));
    }
  }
}
