import 'package:flutter/material.dart';

class PlaceAppBarView extends StatefulWidget implements PreferredSizeWidget {
  final String location;
  final double appbar_height = 70;

  PlaceAppBarView({required this.location});

  @override
  State<PlaceAppBarView> createState() => _PlaceAppBarViewState();
  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}

class _PlaceAppBarViewState extends State<PlaceAppBarView> {
  late final FocusNode _focusNode;
  late String _location;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _location = widget.location;
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleButtonPress() {
    FocusScope.of(context).unfocus(); // 포커스 해제
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            _handleButtonPress();
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Expanded(
              // 검색창
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4.0),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          focusNode: _focusNode,
                          showCursor: _focusNode.hasFocus,
                          decoration: InputDecoration(
                              hintText: _location,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(10,0,10,7)),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.black),
                      onPressed: () {
                        _handleButtonPress();
                        // todo 검색창 문구 갱신
                        // todo 주소 api 호출 및 하단 목록 호출
                      },
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {
                _handleButtonPress();
                // todo 한눈에 보기 기능 추가 (지도 좌표 표시)
              },
            ),
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                _handleButtonPress();
                // todo 중심 위치 수정 가능
                // todo 몇 m 이내 조절
                // todo 거리순, 정확도순 변경
              },
            ),
          ],
        ),
      ),
    );
  }
}