import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/lec_table_view/data/material_model/material_model.dart';

part 'material_state.dart';

class MaterialCubit extends Cubit<MaterialCubitState> {
  MaterialCubit() : super(MaterialInitial());
  List<MaterialModel> material = [];
  List<dynamic> data = [];
  Future<void> materialFunction({
    String? courseName,
  }) async {
    emit(MaterialLooding());
    try {
      data = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/Material",
          body: {'courseName': courseName});

      emit(MaterialSuccess());
      for (int i = 0; i < data.length; i++) {
        material.add(MaterialModel.fromJson(data[i]));
      }
      print(data);
    } catch (e) {
      emit(MaterialFailuer());
    }
  }
}
