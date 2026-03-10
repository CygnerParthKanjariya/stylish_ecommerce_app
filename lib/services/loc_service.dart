import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<bool> requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      return true;
    } else {
      return false;
    }
  }
}
