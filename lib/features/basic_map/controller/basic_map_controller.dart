import 'package:get/get.dart';
import 'package:google_map/core/constants/map_constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BasicMapController extends GetxController {
  GoogleMapController? googleMapController; 
  final Rx<LatLng> currentLocation = MapConstants.defaultLocation.obs; 
  final RxDouble zoom = MapConstants.defaultZoom.obs; 

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller; 
  }

  void onCameraMove(CameraPosition position) {
    currentLocation.value = position.target; 
    zoom.value = position.zoom; 
  }

  
}