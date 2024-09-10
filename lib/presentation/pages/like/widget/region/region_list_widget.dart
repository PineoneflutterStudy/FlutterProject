import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_team1/presentation/pages/like/widget/region/region_item_widget.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/like/region_list.dart';
import '../../../../../domain/model/display/like/region_select.dart';

class RegionListWidget extends StatefulWidget {

  final RegionStatus state;
  final RegionListModel region;
  final RegionSelectModel select;

  const RegionListWidget({
    super.key,
    required this.state,
    required this.region,
    required this.select,
  });

  @override
  State<RegionListWidget> createState() => _RegionListWidgetState();
}

class _RegionListWidgetState extends State<RegionListWidget> {

  final ScrollController _scrollController = ScrollController();
  bool _showTopGradient = false;
  bool _showBottomGradient = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    double maxScrollExtent = _scrollController.position.maxScrollExtent;
    double currentScroll = _scrollController.offset;

    if (currentScroll <= 0) {
      setState(() {
        _showTopGradient = false;
      });
    } else {
      setState(() {
        _showTopGradient = true;
      });
    }

    if (currentScroll >= maxScrollExtent) {
      setState(() {
        _showBottomGradient = false;
      });
    } else {
      setState(() {
        _showBottomGradient = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
          controller: _scrollController,
          itemCount: widget.region.addrList.length,
          itemBuilder: (context, index) {
            return RegionItemWidget(
              state: widget.state,
              regionModel: widget.region.addrList[index],
              selectModel: widget.select,
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0
          ),
        ),
        if (_showTopGradient)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 50,
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.white,
                          AppColors.white.withOpacity(0.0),
                        ]
                    )
                ),
              ),
            ),
          ),
        if (_showBottomGradient)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppColors.white,
                          Colors.white.withOpacity(0.0),
                        ]
                    )
                ),
              ),
            ),
          ),
      ],
    );
  }
}
