import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../data/data_source/api/region/region_impl_api.dart';
import '../../../../../../../../domain/model/display/like/region_model.dart';
import '../../../../../../../../domain/repository/like/region_repository.dart';
import '../bloc/region_filter_bloc.dart';

class RegionFilterWidget extends StatelessWidget {
  final RegionRepository repository = RegionRepository(RegionImplApi());

  @override
  Widget build(BuildContext context) {
    String place = "";

    return BlocProvider(
      create: (context) {
        final bloc = RegionFilterBloc(repository: repository);
        bloc.add(RegionFilterEvent.started());
        return bloc;
      },
      child: BlocBuilder<RegionFilterBloc, RegionFilterState>(
        builder: (context, state) {
          return state.when(
            initial: () => Text('초기화',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
            onLoading: () => Text('로딩중',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
            onLoaded: (region) => buildMainPage(context, region),
            selectRegion: () => Text('사용자 선택',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
          );
        },
      ),
    );
  }

  ClipRRect buildMainPage(BuildContext context, List<RegionModel> list) {
    return ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 400,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('장소 필터',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                height: 80,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 3 / 1,
                    ),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.read<RegionFilterBloc>().add(RegionFilterEvent.userSelected(list[index].cd));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )
                          ),
                          child: Center(
                            child: Text(list[index].addr,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
