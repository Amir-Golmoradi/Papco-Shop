import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/pages/home_completed_body.dart';
import 'package:papco_shop/src/application/feature/views/home_features/states/blocs/home-bloc/home_bloc.dart';
import 'package:papco_shop/src/application/feature/views/home_features/widgets/widgets.dart';
import 'package:papco_shop/src/application/feature/views/public_feature/widgets/error_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(CallHomeApiEvent());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.red[400],
      onRefresh: () async => BlocProvider.of<HomeBloc>(context).add(
        CallHomeApiEvent(),
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const ShimmerViewLoading();
          }
          if (state is HomeSuccessState) {
            HomeModel homeModel = state.homeModel;

            return HomeCompleteBody(
              homeModel: homeModel,
            );
          }
          if (state is HomeErrorState) {
            ErrorViewWidget(
              errorMsg: state.message.errorMsg.toString(),
              function: () => BlocProvider.of<HomeBloc>(context).add(
                CallHomeApiEvent(),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          );
        },
      ),
    );
  }
}
