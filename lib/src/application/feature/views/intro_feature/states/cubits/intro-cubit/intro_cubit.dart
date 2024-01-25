import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'intro_state.dart';

class IntroCubit extends Cubit<int> {
  IntroCubit() : super(0);

  int currentIndex = 0;

  int get value => currentIndex;

  indexHandler(int index) {
    emit(currentIndex = index);
  }
}
