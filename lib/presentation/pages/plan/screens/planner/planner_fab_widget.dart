import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';

class PlannerFabWidget extends StatefulWidget {
  final List<IconData> icons;
  ValueChanged<int> onIconTapped;

  PlannerFabWidget({required this.icons, required this.onIconTapped});

  @override
  State createState() => PlannerFabWidgetState();
}

class PlannerFabWidgetState extends State<PlannerFabWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 30, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.icons.length, (int index) {
          return _buildChild(index);
        }).toList()
          ..add(
            _buildFab(),
          ),
      ),
    );
  }

  // 위에 올라가는 child 버튼들
  Widget _buildChild(int index) {
    Color backgroundColor = Theme.of(context).cardColor;
    Color iconColor = AppColors.primary;
    return Container(
      height: 60.0,
      width: 55.0,
      alignment: FractionalOffset.topCenter,
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 1.0 - index / widget.icons.length / 2.0,
              curve: Curves.easeOut),
        ),
        child: FloatingActionButton(
          heroTag: 'btn$index',
          backgroundColor: backgroundColor,
          mini: true,
          child: Icon(widget.icons[index], color: iconColor),
          onPressed: () => _onTapped(index),
        ),
      ),
    );
  }

  // 기본 플러팅 버튼
  Widget _buildFab() {
    return FloatingActionButton(
      heroTag: 'basicBtn',
      onPressed: () {
        if (_controller.isDismissed) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
      elevation: 2.0,
    );
  }

  void _onTapped(int index) {
    _controller.reverse();
    widget.onIconTapped(index);
  }
}
