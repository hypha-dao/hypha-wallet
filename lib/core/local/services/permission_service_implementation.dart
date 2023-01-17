import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/local/services/permission_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionServiceImplementation implements PermissionService {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }

  @override
  Future<bool> handleCameraPermission() async {
    final PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      print('😰 😰 😰 😰 😰 😰 Permission to camera was not granted! 😰 😰 😰 😰 😰 😰');
      await Get.defaultDialog(
          title: 'Camera Permission',
          content: const Text(
            'Camera permission is used for QR code scanning, would you like to go to app settings to give camera permission?',
          ),
          onConfirm: openAppSettings);
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission() async {
    final PermissionStatus photosPermissionStatus = await requestPhotosPermission();

    if (photosPermissionStatus != PermissionStatus.granted) {
      print('😰 😰 😰 😰 😰 😰 Permission to photos not granted! 😰 😰 😰 😰 😰 😰');
      await Get.defaultDialog(
          title: 'Photos Permission',
          content: const Text(
            'Photos permission is used for profile image, would you like to go to app settings to give photos permission?',
          ),
          onConfirm: openAppSettings);

      return false;
    }
    return true;
  }
}
