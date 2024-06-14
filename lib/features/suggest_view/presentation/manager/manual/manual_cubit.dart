import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'manual_state.dart';

class ManualCubit extends Cubit<ManualState> {
  ManualCubit() : super(ManualInitial());
  List<String> course = [];
  dynamic data = [];
  Future<void> postCourseName({required String token}) async {
    emit(ManualLooding());
    try {
      data = await ApiServices().post(
        url: "${AssetsPath.apiLink}/api/auth/enroll_student",
        body: {
          'courses': jsonEncode(course),
          'token': token,
        },
      );

      emit(ManualSuccess(data: data));
      print(data);
    } catch (e) {
      emit(ManualFailuer(error: e.toString()));
    }
  }
}
