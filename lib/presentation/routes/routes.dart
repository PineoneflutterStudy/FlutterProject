import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../core/utils/logger.dart';
import '../../domain/model/display/meet/location_db.model.dart';
import '../../domain/model/display/meet/meet_address.model.dart';
import '../main/main_screen.dart';
import '../pages/home/home_page/home_screen.dart';
import '../pages/like/like_page.dart';
import '../pages/login/screens/login_page.dart';
import '../pages/meet/meet_page.dart';
import '../pages/meet/screens/meet_place_map_screen.dart';
import '../pages/meet/screens/meet_save_place_map_screen.dart';
import '../pages/plan/bloc/address_bloc/address_bloc.dart';
import '../pages/plan/plan_page.dart';
import '../pages/plan/screens/recommend/recommended_list_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/user/screens/user_page.dart';
import 'route_path.dart';

final Logger _logger = CustomLogger.logger;

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: RoutePath.splash,
    name: 'splash',
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: RoutePath.main,
    name: 'main',
    builder: (context, state) => const MainScreen(),
  ),
  GoRoute(
    path: RoutePath.home,
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: RoutePath.plan,
    name: 'plan',
    builder: (context, state) => PlanPage(),
  ),
  GoRoute(
    path: RoutePath.rcmn,
    name: 'rcmn',
    builder: (context, state) {
      final location = state.uri.queryParameters['location'] ?? '';
      final placeId = state.uri.queryParameters['placeId'] ?? '';
      final category = state.uri.queryParameters['category'] ?? 'FD6';
      final root = state.uri.queryParameters['root'] ?? 'addPlace';
      final addressBloc = state.extra as AddressBloc;
      return BlocProvider.value(
          value: addressBloc,
          child: RecommendedListPage(
              location: location,
              prevPlaceId: placeId,
              categoryId: category,
              addressBloc: addressBloc,
              root: root));
    },
  ),
  GoRoute(
    path: RoutePath.like,
    name: 'like',
    builder: (context, state) => const LikePage(),
  ),
  // ==================== Meet ====================
  GoRoute(
    path: RoutePath.meet,
    name: 'meet',
    builder: (context, state) => const MeetPage(),
  ),
  GoRoute(
    path: RoutePath.meetMap,
    name: 'meetMap',
    builder: (context, state) {
      final addresses = state.extra as List<MeetAddressModel>;
      return MeetPlaceMapScreen(addresses: addresses);
    },
  ),
  GoRoute(
    path: RoutePath.saveMeetMap,
    name: 'saveMeetMap',
    builder: (context, state) {
      final addressModel = state.extra as LocationDbModel;
      return MeetSavePlaceMapScreen(address: addressModel);
    },
  ),
  // ==================== Meet ====================
  GoRoute(
    path: RoutePath.user,
    name: 'user',
    builder: (context, state) => const UserPage(),
  ),
  GoRoute(
    path: RoutePath.login,
    name: 'login',
    builder: (context, state) => const LoginPage(),
  ),
], initialLocation: '/splash');
