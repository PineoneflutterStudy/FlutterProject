import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/common/fab_item.dart';

class CommonFabWidget extends StatefulWidget {
  final List<FabItem> fabItems;
  final IconData mainIcon;
  final double padding;

  CommonFabWidget({
    required this.fabItems,
    required this.mainIcon,
    this.padding = 16.0,
  });

  @override
  State createState() => CommonFabWidgetState();
}

class CommonFabWidgetState extends State<CommonFabWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFab() {
    setState(() {
      isExpanded = !isExpanded;
      if (isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isExpanded) _buildBackdrop(),
        _buildFabMenu(),
      ],
    );
  }

  Widget _buildBackdrop() {
    return Positioned.fill(
      child: GestureDetector(
        onTap: _toggleFab,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            color: AppColors.surface.withOpacity(0.1),
          ),
        ),
      ),
    );
  }

  Widget _buildFabMenu() {
    return Positioned(
      bottom: widget.padding,
      right: widget.padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ...widget.fabItems.map((item) => FadeTransition(
            opacity: _animation,
            child: _buildChild(item),
          )),
          const SizedBox(height: 5),
          _buildMainFab(),
        ],
      ),
    );
  }

  Widget _buildChild(FabItem item) {
    return GestureDetector(
      onTap: () {
        item.onTap();
        _toggleFab();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        width: 100.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          border: isExpanded ? Border.all(color: AppColors.carrot, width: 0.5) : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(item.icon, color: AppColors.carrot),
            const SizedBox(width: 2.0),
            Expanded(child: Center(child: Text(item.label, style: const TextStyle(color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 16)))),
          ],
        ),
      ),
    );
  }

  Widget _buildMainFab() {
    var btnBgColor = isExpanded ? AppColors.white : AppColors.carrot;
    var btnIconColor = isExpanded ? AppColors.carrot : AppColors.white;
    return GestureDetector(
      onTap: _toggleFab,
      child: Container(
        width: 56.0,
        height: 56.0,
        decoration: BoxDecoration(
          color: btnBgColor,
          shape: BoxShape.circle,
          boxShadow: isExpanded ? [] : [BoxShadow(color: Colors.black26, blurRadius: 4.0, offset: Offset(0, 2))],
        ),
        child: Icon(isExpanded ? Icons.close : widget.mainIcon, size: 30, color: btnIconColor),
      ),
    );
  }
}