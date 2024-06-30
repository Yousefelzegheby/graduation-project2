import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'gpa_state.dart';

class GpaCubit extends Cubit<GpaState> {
  GpaCubit() : super(GpaInitial());
  List<dynamic> data = [];
  Future<void> gpa({required String token}) async {
    emit(GpaLooding());
    try {
      data = await ApiServices()
          .post(url: "${AssetsPath.apiLink}/api/auth/GPA", body: {
        'token': token,
      });

      // for (int i = 0; i < data.length; i++) {
      //   allproduct.add(LoginModel.fromJson(data[i]));
      // }
      print(data);

      emit(GpaSuccess());
    } catch (e) {
      emit(GpaFailuer());
      print(e.toString());
    }
  }
}
