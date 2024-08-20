class RegionEntity {
  final String? id;
  final List<Result>? result;

  RegionEntity.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      result =
        List<Result>.from(json['result'].map((data) =>
            Result.fromJson(data)));
}

class Result {
  final String? y_coor;
  final String? full_addr;
  final String? x_coor;
  final String? addr_name;
  final String? cd;

  Result({
    required this.y_coor,
    required this.full_addr,
    required this.x_coor,
    required this.addr_name,
    required this.cd,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      y_coor: json['y_coor'],
      full_addr: json['full_addr'],
      x_coor: json['x_coor'],
      addr_name: json['addr_name'],
      cd: json['cd'],
    );
  }
}