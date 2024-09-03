import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../../../../data/data_source/api/region/region_impl_api.dart';
import '../../../../../domain/model/display/like/region.dart';
import '../../../../../domain/model/display/like/region_list.dart';
import '../../../../../domain/repository/like/region_repository.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/region_filter_bloc.dart';

class RegionWidget extends StatelessWidget {
  final RegionRepository repository = RegionRepository(RegionImplApi());

  @override
  Widget build(BuildContext context) {

    // Default List View Width
    double _width = MediaQueryData.fromWindow(window).size.width;


    return BlocProvider(
      create: (context) {
        final bloc = RegionFilterBloc(repository: repository);
        bloc.add(RegionFilterEvent.started());
        return bloc;
      },
      child: BlocConsumer<RegionFilterBloc, RegionFilterState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => buildLoadingPage(),
            showMajor: (regionList) => setUI('major' ,_width, regionList, ''),
            showMiddle: (regionList, current) => setUI('middle' ,_width, regionList, current),
            showMinor: (regionList,current) => setUI('minor' ,_width, regionList, current),
            orElse: () => SizedBox()
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            finish: (result) => _returnResult(context, result),
            orElse: _nothing,
          );
        },
      )
    );
  }

  /*
   * 로딩 화면
   */
  Container buildLoadingPage() {
    return Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  Scaffold setUI(String state, double width, RegionListModel region, String current) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MainAppbar(
        title: '장소 필터',
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 13,
                left: 20,
              ),
              child: Text(selectedResult(state, current),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
            width: double.infinity,
            height: 60,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: _createListView(
                    type: 0,
                    state: state,
                    width: width,
                    color: AppColors.secondary,
                    current: current,
                    address:
                      region.currentAddr != null ?
                        region.currentAddr! : region.newAddr,
                    ),
                ),
                Visibility(
                  visible:
                    region.currentAddr != null ? true : false,
                  child: Expanded(
                    flex: 7,
                    child: _createListView(
                      type: 1,
                      state: state,
                      width: width,
                      color: AppColors.onSecondary,
                      current: current,
                      address: region.newAddr,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }

  Container _createListView({
    required int type, // main : 0 / sub : 1
    required String state,
    required double width,
    required Color color,
    required String current,
    required List<RegionModel> address,
  }) {
    return Container(
      color: color,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: address.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _selectedButton(context, type, state, index, current, address);
            },
            child: Container(
              color: color,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      address[index].addr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ),
            ),
          );
        },
      ),
    );
  }


  /**
   *  Method
   */

  String selectedResult(String type, String current) {
    switch (type) {
      case 'middle':
      case 'minor':
        return current;
    }
    return '장소를 선택하세요.';
  }

  void _selectedButton(
    BuildContext context,
    int type, // main : 0 / sub : 1
    String state,
    int index,
    String current,
    List<RegionModel> address,
  ){
    switch (state) {
      case 'major':
        context.read<RegionFilterBloc>().add(
    RegionFilterEvent.major(address, address[index].cd,address[index].addr, state));
      case 'middle':
        if (type == 0) {
          context.read<RegionFilterBloc>().add(
              RegionFilterEvent.major(address, address[index].cd,address[index].addr, state));
        } else {
          context.read<RegionFilterBloc>().add(
              RegionFilterEvent.middle(address, address[index].cd,current + ' > ' + address[index].addr, state));
        }
      case 'minor':
        if (type == 0) {
          context.read<RegionFilterBloc>().add(
              RegionFilterEvent.middle(address, address[index].cd,current.substring(0, current.indexOf('>')) + '> ' + address[index].addr, state));
        } else {
          context.read<RegionFilterBloc>().add(
              RegionFilterEvent.finish(current + ' > ' + address[index].addr));
        }
    }
  }

  void _returnResult(BuildContext context, String result) {
    CommonUtils.showToastMsg('선택된 장소의 찜목록만 보여집니다.');
    Navigator.pop(context, result);
  }

  void _nothing() {}
}
