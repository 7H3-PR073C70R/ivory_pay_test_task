import 'package:permission_handler/permission_handler.dart';

abstract class PermissionService {
  Future<bool> requestCameraPermission();
  Future<bool> requestBluetoothPermission();
}

class PermissionServiceImpl extends PermissionService {
  @override
  Future<bool> requestBluetoothPermission()  {
   return Permission.bluetooth.request().isGranted;
  }

  @override
  Future<bool> requestCameraPermission() {
    return Permission.camera.request().isGranted;
  }
}
