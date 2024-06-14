import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/sign_up_view/data/signup_model/signup_model/signup_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  // List<SignupModel> signUpinfo = [];
  List<dynamic> data = [];
  Future<void> signUpNew(
      {required String email,
      required String password,
      required String firist,
      required String last}) async {
    emit(SignUpLooding());
    try {
      data = await ApiServices()
          .post(url: "${AssetsPath.apiLink}/api/auth/register", body: {
        'email': email,
        'password': password,
        'name': "$firist" + ' ' + "$last",
      });

      // for (int i = 0; i < data.length; i++) {
      //   signUpinfo.add(SignupModel.fromJson(data[i]));
      // }
      print(data);

      emit(SignUpSuccess(data: data));
    } catch (e) {
      emit(SignUpFailuer(error: 'there is an error please try again'));
      print(e.toString());
    }
  }
}
