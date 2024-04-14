import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'chat_state.dart';

dynamic data;

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  Future<void> postHomeInfo({required String token}) async {
    emit(ChatLoodingState());
    try {
      data = await ApiServices().post(
          url: "${AssetsPath.apiLink}/api/auth/user_data",
          body: {'token': token});

      emit(ChatSuccessState());
      // for (int i = 0; i < data.length; i++) {
      //   homeInfo.add(HomeInformation.fromJson(data[i]));
      // }
      print(data);
    } catch (e) {
      emit(ChatFailuerState());
    }
  }
}
