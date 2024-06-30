import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/suggest_view/data/recommended_model/recommended_model.dart';

part 'recomended_course_state.dart';

class RecomendedCourseCubit extends Cubit<RecomendedCourseState> {
  RecomendedCourseCubit() : super(RecomendedCourseInitial());
  List<RecommendedModel> recommended = [];
  Future<void> recommendedfunction({
    required String token,
  }) async {
    emit(RecomendedCourseLooding());
    try {
      List<dynamic> data = await ApiServices()
          .post(url: "${AssetsPath.apiLink}/api/predict", body: {
        'token': token,
      });
      for (int i = 0; i < data.length; i++) {
        recommended.add(RecommendedModel.fromJson(data[i]));
      }
      print(recommended);

      emit(RecomendedCourseSuccess(data: recommended));
      print(data);
    } catch (e) {
      emit(RecomendedCourseFailuer(error: e.toString()));
    }
  }
}
