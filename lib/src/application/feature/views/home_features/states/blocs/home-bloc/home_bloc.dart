import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:papco_shop/src/application/feature/views/home_features/repository/home_repository.dart';
import 'package:papco_shop/src/application/feature/views/public_feature/error/error.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../model/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<CallHomeApiEvent>(callHomeApi);
  }

  FutureOr<void> callHomeApi(
      CallHomeApiEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    try {
      final homeModel = await homeRepository.callIndexApi();

      emit(HomeSuccessState(homeModel));
    } on DioException catch (e) {
      HomeErrorState(
        message: ErrorMessage(
          errorMsg: ErrorExceptions().fromError(e),
        ),
      );
    }
  }
}
