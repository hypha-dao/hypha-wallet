abstract class PermissionService {
  Future requestPhotosPermission();

  Future<bool> handlePhotosPermission();

  Future requestCameraPermission();

  Future<bool> handleCameraPermission();
}
