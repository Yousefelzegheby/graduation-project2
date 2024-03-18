import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'post_grade_state.dart';

class PostGradeCubit extends Cubit<PostGradeState> {
  PostGradeCubit() : super(PostGradeInitial());
  Future<void> postGrade({
    required dynamic body,
  }) async {
    emit(PostGradeLooding());
    try {
      dynamic failuer;
      dynamic data = await ApiServices().postGrade(
        faliuer: failuer,
        url: "${AssetsPath.apiLink}/api/auth/register_degrees",
        body: body,
      );

      emit(PostGradeSuccess(data: data));
      // for (int i = 0; i < data.length; i++) {
      //   enterGrade.add(EnterGradeModel.fromJson(data[i]));
      // }
      print(data);
    } catch (e) {
      emit(PostGradefailuer());
    }
  }
}
