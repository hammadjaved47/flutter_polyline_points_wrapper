import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_polyline_points_wrapper/flutter_polyline_points_wrapper.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  test('get list of coordinates from two geographical positions', () async {
    final polylinePoints = PolylinePoints();
    List<LatLng> polylineCoordinates = await polylinePoints.getRouteBetweenCoordinates(
        "your_google_maps_api_key",
        PointLatLng(6.5212402, 3.3679965),
        PointLatLng(6.595680, 3.337030),
        travelMode: TravelMode.driving);

    assert(polylineCoordinates.isNotEmpty == true);
  });

  test('get list of coordinates from an encoded String', () {
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points =
        polylinePoints.decodePolyline("_p~iF~ps|U_ulLnnqC_mqNvxq`@");
    assert(points.length > 0);
  });
}
