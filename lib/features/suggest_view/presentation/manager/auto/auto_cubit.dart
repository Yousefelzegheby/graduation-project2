import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auto_state.dart';

class AutoCubit extends Cubit<AutoState> {
  AutoCubit() : super(AutoInitial());
}
