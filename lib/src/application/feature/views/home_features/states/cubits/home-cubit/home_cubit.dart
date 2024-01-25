import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  int activeIndex = 0;

  changeActiveIndex(int index) {
    emit(activeIndex = index);
  }
}
