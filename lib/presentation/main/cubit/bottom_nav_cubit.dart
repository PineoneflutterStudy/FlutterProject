import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/constant/app_icons.dart';

enum BottomNav{
  home,
  plan,
  like,
  meet,
  user
}

class BottomNavCubit extends Cubit<BottomNav>{
  BottomNavCubit() : super(BottomNav.home);

  void changeIndex(int index) => emit(BottomNav.values[index]);
}

extension BottomNavX on BottomNav {
  String get icon{
    switch(this){
      case BottomNav.home:
        return AppIcons.navHome;
      case BottomNav.plan:
        return AppIcons.navPlan;
      case BottomNav.like:
        return AppIcons.navLike;
      case BottomNav.meet:
        return AppIcons.navMeet;
      case BottomNav.user:
        return AppIcons.navUser;
    }
  }

  String get activeIcon{
    switch(this){
      case BottomNav.home:
        return AppIcons.navHomeOn;
      case BottomNav.plan:
        return AppIcons.navPlanOn;
      case BottomNav.like:
        return AppIcons.navLikeOn;
      case BottomNav.meet:
        return AppIcons.navMeetOn;
      case BottomNav.user:
        return AppIcons.navUserOn;
    }
  }

  String get toName{
    switch(this){
      case BottomNav.home:
        return '홈';
      case BottomNav.plan:
        return '여행플래너';
      case BottomNav.like:
        return '찜목록';
      case BottomNav.meet:
        return '어디서만나';
      case BottomNav.user:
        return '마이페이지';
    }
  }
}