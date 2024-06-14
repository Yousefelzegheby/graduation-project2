import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'suggest_state.dart';

class SuggestCubit extends Cubit<SuggestState> {
  SuggestCubit() : super(SuggestInitial());
  List<dynamic> data = [];
  Future<void> suggestFirist({
    required String token,
  }) async {
    emit(SuggestLodding());
    try {
      data = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/auth/getOptionalCourses",
          body: {
            'token': token,
          });

      emit(SuggestSuccess(data: data));
      print(data);
    } catch (e) {
      emit(SuggestFailuer(error: e.toString()));
    }
  }
}
