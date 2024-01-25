import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  int pageIndex = 0;

  void clickHandler(int index) {
    emit(pageIndex = index);
  }
}
