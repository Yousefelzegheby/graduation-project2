import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'message_cubit_state.dart';

class MessageCubitCubit extends Cubit<MessageCubitState> {
  MessageCubitCubit() : super(MessageCubitInitial());
}
