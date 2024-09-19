import '../../../domain/model/display/like/region.dart';
import '../../dto/display/like/filter/region_dto.dart';

extension RegionX on ResultDto {

  RegionModel toModel() {
    return RegionModel(
        cd: cd ?? '',
        addr: addr_name ?? '',
    );
  }
}