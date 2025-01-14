part of yandex_mapkit;

class DrivingRoute extends Equatable {
  final List<Point> geometry;
  final DrivingSectionMetadata metadata;

  const DrivingRoute._(this.geometry, this.metadata);

  factory DrivingRoute.fromJson(Map<dynamic, dynamic> json) {
    return DrivingRoute._(
      json['geometry'].map<Point>((dynamic resultPoint) => Point.fromJson(resultPoint)).toList(),
      DrivingSectionMetadata.fromJson(json['metadata']),
    );
  }

  @override
  List<Object> get props => <Object>[
    geometry,
    metadata,
  ];

  @override
  bool get stringify => true;
}
