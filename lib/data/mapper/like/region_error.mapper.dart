import '../../../domain/model/display/like/region_error.dart';
import '../../dto/display/like/filter/region_dto.dart';

extension RegionX on RegionDto {

  RegionErrorModel toModel() {
    return RegionErrorModel(
      errMsg: errMsg,
      errCd: errCd,
    );
  }
}