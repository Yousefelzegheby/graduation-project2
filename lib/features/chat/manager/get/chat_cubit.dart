import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/path.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  dynamic data;
  Future<void> chatGet({dynamic body}) async {
    emit(ChatLoodingState());
    try {
      data = await ApiServices().post(
        body: body,
        url: "${AssetsPath.apiLink}/api/chatbot",
      );

      emit(ChatSuccessState(data: data));
      // for (int i = 0; i < data.length; i++) {
      //   homeInfo.add(HomeInformation.fromJson(data[i]));
      // }
      print(data);
    } catch (e) {
      emit(ChatFailuerState());
    }
  }
}
