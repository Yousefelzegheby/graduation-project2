import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileInitial());
  dynamic data;
  Future<void> editPassword({
    required String token,
    required String newPassword,
    required String oldPass,
  }) async {
    emit(EditProfileLodding());
    try {
      data = await ApiServices()
          .post(url: "${AssetsPath.apiLink}/api/auth/edit_password", body: {
        'token': token,
        'newpassword': newPassword,
        'oldpass': oldPass,
      });

      emit(EditProfileSuccess(data: data));
      print(data);
    } catch (e) {
      emit(EditProfileFailuer(failuer: e.toString()));
    }
  }
}
