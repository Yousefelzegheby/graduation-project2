import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'sign_up_years_state.dart';

class SignUpYearsCubit extends Cubit<SignUpYearsState> {
  SignUpYearsCubit() : super(SignUpYearsInitial());

  List<dynamic> enterGrade = [];
  Future<void> signUpYear(
      {required String grade,
      required String id,
      required String token}) async {
    emit(SignUpYearLooding());

    try {
      enterGrade = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/StdCourses",
          body: {"academic_year": grade, 'id': id, "token": token});

      // for (int i = 0; i < data.length; i++) {
      //   enterGrade.add(EnterGradeModel.fromJson(data[i]));
      // }
      print(enterGrade);
      emit(SignUpYearSuccess(success: enterGrade));
    } catch (e) {
      emit(const SignUpYearfailuer(failuer: 'error from server'));
    }
  }
}
