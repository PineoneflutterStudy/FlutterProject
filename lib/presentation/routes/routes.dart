import 'package:go_router/go_router.dart';

import '../main/main_screen.dart';
import '../pages/home/home_page.dart';
import '../pages/like/like_page.dart';
import '../pages/meet/meet_page.dart';
import '../pages/plan/plan_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/user/user_page.dart';
import 'route_path.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: RoutePath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage()),
  GoRoute(
      path: RoutePath.main,
      name: 'main',
      builder: (context, state) => const MainScreen()),
  GoRoute(
      path: RoutePath.home,
      name: 'home',
      builder: (context, state) => const HomePage()),
  GoRoute(
      path: RoutePath.plan,
      name: 'plan',
      builder: (context, state) => const PlanPage()),
  GoRoute(
      path: RoutePath.like,
      name: 'like',
      builder: (context, state) => const LikePage()),
  GoRoute(
      path: RoutePath.meet,
      name: 'meet',
      builder: (context, state) => const MeetPage()),
  GoRoute(
      path: RoutePath.user,
      name: 'user',
      builder: (context, state) => const UserPage()),
], initialLocation: '/splash');
