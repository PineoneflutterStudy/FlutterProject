import '../../domain/model/display/meet/mobility_directions.model.dart';
import '../dto/display/meet/mobility_directions.dto.dart';

extension MobilityDirectionsX on MobilityDirectionsDto {
  MobilityDirectionsModel toModel() {
    return MobilityDirectionsModel(
        distance: distance ?? 0,
        duration: duration ?? 0,
        vertexes: vertexes ?? List.empty(),
    );
  }
}