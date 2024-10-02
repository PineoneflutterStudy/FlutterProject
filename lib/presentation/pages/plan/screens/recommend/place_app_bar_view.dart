import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/common_utils.dart';

/// Plan 메뉴 > 추천 목록 장소 화면 > 상단 AppBar
class PlaceAppBarView extends StatefulWidget implements PreferredSizeWidget {
  final String location;
  final int radius;
  final String sort;
  final bool isFilterVisible;
  final ValueChanged<String> onLocationChanged;
  final Function(int, String) onFilterChanged;
  final double appbar_height = 70;

  PlaceAppBarView({required this.location, required this.radius, required this.sort, required this.isFilterVisible, required this.onLocationChanged, required this.onFilterChanged});

  @override
  State<PlaceAppBarView> createState() => _PlaceAppBarViewState();

  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}

class _PlaceAppBarViewState extends State<PlaceAppBarView> {
  late TextEditingController _controller;
  late final FocusNode _focusNode;
  int _currentSliderValue = 10000;
  String _selectedSortOption = 'distance';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.location);
    _focusNode = FocusNode();
    _currentSliderValue = widget.radius;
    _selectedSortOption = widget.sort;
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: AppColors.contentSecondary,
          onPressed: () {
            _handleButtonPress();
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          controller: _controller,
                          focusNode: _focusNode,
                          showCursor: _focusNode.hasFocus,
                          decoration: InputDecoration(
                              hintText: 'Enter location',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 7)),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: AppColors.contentSecondary),
                      onPressed: () => _handleSearch(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            if(widget.isFilterVisible)
              IconButton(
                icon: Image.asset(AppIcons.iconFilter , color: AppColors.contentSecondary, width: 18, height: 18),
                onPressed: () {
                  _handleButtonPress();
                  _showFilterPopup(context);
                },
              ),
          ],
        ),
      ),
    );
  }

  void _handleButtonPress() {
    FocusScope.of(context).unfocus(); // 포커스 해제
  }

  void _handleSearch() {
    _handleButtonPress();
    String newLocation = _controller.text;
    if (newLocation != widget.location) {
      widget.onLocationChanged(newLocation);
    }
  }

  void _showFilterPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: EdgeInsets.all(20.0),
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Text('정렬 순서', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() => _selectedSortOption = 'distance'),
                        style: CommonUtils.getMelonButtonStyle(_selectedSortOption == 'distance'),
                        child: Text('거리순', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() => _selectedSortOption = 'accuracy'),
                        style: CommonUtils.getMelonButtonStyle(_selectedSortOption == 'accuracy'),
                        child: Text('정확도순', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('반경 ${_currentSliderValue ~/ 1000}km 이내의 장소 검색',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Slider(
                  value: _currentSliderValue.toDouble(),
                  min: 0,
                  max: 20000,
                  divisions: 20,
                  label: '${(_currentSliderValue ~/ 1000).round()}km',
                  onChanged: (double value) => setState(() => _currentSliderValue = (value / 1000).round() * 1000),
                  activeColor: AppColors.melon,
                  inactiveColor: AppColors.onInverseSurface,
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _currentSliderValue = widget.radius;
                        _selectedSortOption = widget.sort;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.melon, width: 0.5)),
                        child: Text('취소', style: const TextStyle(color: AppColors.melon, fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        widget.onFilterChanged(_currentSliderValue, _selectedSortOption);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: AppColors.melon, borderRadius: BorderRadius.circular(30)),
                        child: Text('변경', style: const TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      },
    );
  }
}