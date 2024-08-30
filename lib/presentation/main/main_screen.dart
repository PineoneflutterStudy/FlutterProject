import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/home/home_page/home_screen.dart';
import '../pages/like/like_page.dart';
import '../pages/meet/main_meet_page/view/meet_page.dart';
import '../pages/plan/plan_page.dart';
import '../pages/user/user_page.dart';
import 'cubit/bottom_nav_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavCubit, BottomNav>(
        builder: (_, state) {
          switch (state) {
            case BottomNav.home:
              return const HomePage();
            case BottomNav.plan:
              return const PlanPage();
            case BottomNav.like:
              return const LikePage();
            case BottomNav.meet:
              return const MeetPage();
            case BottomNav.user:
              return const UserPage();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNav>(builder: (_, state) {
        return BottomNavigationBar(
          items: List.generate(BottomNav.values.length, (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(BottomNav.values[index].icon, width: 24),
                  label: BottomNav.values[index].toName,
                  activeIcon: SvgPicture.asset(BottomNav.values[index].activeIcon, width: 24))),
          onTap: (index) => context.read<BottomNavCubit>().changeIndex(index),
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        );
      }),
    );
  }
}
