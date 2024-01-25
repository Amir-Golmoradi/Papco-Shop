part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeSuccessState extends HomeState {
  final HomeModel homeModel;

  const HomeSuccessState(this.homeModel);
  @override
  List<Object> get props => [homeModel];
}

final class HomeErrorState extends HomeState {
  final ErrorMessage message;

  const HomeErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
