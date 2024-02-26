import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notification_cubit_state.dart';

class NotificationCubitCubit extends Cubit<NotificationCubitState> {
  NotificationCubitCubit() : super(NotificationCubitInitial());
}
