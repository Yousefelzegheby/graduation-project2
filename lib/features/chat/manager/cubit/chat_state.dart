part of 'chat_cubit.dart';

sealed class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object> get props => [];
}

final class ChatInitial extends ChatState {}

final class ChatLoodingState extends ChatState {}

final class ChatSuccessState extends ChatState {}

final class ChatFailuerState extends ChatState {}
