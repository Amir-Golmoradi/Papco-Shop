import 'package:papco_shop/src/application/feature/views/public_feature/states/cubits/navbar-cubit/bottom_nav_cubit.dart';
import 'package:papco_shop/src/application/feature/views/public_feature/widgets/bottom_nav_item.dart';
import 'package:papco_shop/src/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatefulWidget {
  static BottomNavigation builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const BottomNavigation();
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final navCubit = BlocProvider.of<BottomNavCubit>(context);
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => navCubit.clickHandler(value),
            selectedItemColor: Colors.red,
            unselectedItemColor: context.colorScheme.inversePrimary,
            selectedLabelStyle: const TextStyle(fontFamily: "bold"),
            unselectedLabelStyle: const TextStyle(fontFamily: "bold"),
            items: navItem,
            currentIndex: navCubit.pageIndex,
          ),
          body: bodies[navCubit.pageIndex],
        );
      },
    );
  }
}
