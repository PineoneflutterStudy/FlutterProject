import 'package:flutter/material.dart';
import 'package:flutter_project_team1/presentation/pages/meet/screens/empty_meet_screen.dart';

import '../../main/common/appbar.dart';

/**
 * Manager 김경태
 *
 * 약속장소 추천 ==>
 * 친구 출발위치설정 친구에게 url 보내기
 * 카테고리형 모임 리스트?
 * 중간 위치 추천 > 다른 경로 추천? (하단에 작게?)
 * 누르면 경로 여러개 추천해주는 목록 띄우기 / 사용자가 좌표 수정해 다시 길찾기
 *
 * 가장 기본적으로 보여지는 Screen * Screen 위에서 약속 개수 / 약속 추가하기.....등등 그려준다.
 * 잡은 약속이 없다? -> + 버튼과 [약속장소 정하기] 문구 보여주기 ====> 1 Step TODO
 * 잡은 약속이 이전에 있다? -> 잡은 목록 리스트로 출력 및 마지막에 + 버튼과 [약속장소 정하기] 문구 작게 보여주기  =====> Next Step
 */

class MeetPage extends StatefulWidget {
  const MeetPage({super.key});

  @override
  State<MeetPage> createState() => _MeetPageState();
}

class _MeetPageState extends State<MeetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '우리 어디서 만날까?'),
      body: EmptyMeetScreen(),
    );
  }
}
