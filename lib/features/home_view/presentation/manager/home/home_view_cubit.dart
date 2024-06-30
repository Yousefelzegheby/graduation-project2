import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/home_view/data/home_information/home_information.dart';

part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit() : super(HomeViewInitial());
  List<HomeInformation> homeInfo = [];
  Future<void> postHomeInfo({required String token}) async {
    emit(HomeViewLooding());
    try {
      dynamic data = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/auth/user_data",
          body: {'token': token});

      emit(HomeViewSucsess());
      for (int i = 0; i < data.length; i++) {
        homeInfo.add(HomeInformation.fromJson(data[i]));
      }
      print(homeInfo);
    } catch (e) {
      emit(HomeViewFailuer());
    }
  }
}
