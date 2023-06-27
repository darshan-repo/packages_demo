// ignore_for_file: avoid_print

import 'package:packages_demo/libs.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerController extends GetxController {
  RxString permissionMessage = ''.obs;
  RxBool isShowMessage = false.obs;

  /// It uses to give permission for `camara` access
  void get requestCamera => _requestCamera();

  /// It uses to give permission for `Media Location` access
  void get accessMediaLocation => _accessMediaLocation();

  _requestCamera() async {
    isShowMessage.value = false;
    permissionMessage = ''.obs;
    final status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Granted';
    } else if (status == PermissionStatus.denied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Denied';
    } else if (status == PermissionStatus.permanentlyDenied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission PermanentlyDenied';
      await openAppSettings();
    } else {
      isShowMessage.value = false;
    }
  }

  _accessMediaLocation() async {
    permissionMessage = ''.obs;
    final status = await Permission.accessMediaLocation.request();
    if (status == PermissionStatus.granted) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Granted';
    } else if (status == PermissionStatus.denied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Denied';
    } else if (status == PermissionStatus.permanentlyDenied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission PermanentlyDenied';
      await openAppSettings();
    } else {
      isShowMessage.value = false;
    }
  }

  /// It uses to give permission for `Notification Policy` access
  void get accessNotificationPolicy => _accessNotificationPolicy();

  _accessNotificationPolicy() async {
    isShowMessage.value = false;
    permissionMessage = ''.obs;
    final status = await Permission.accessNotificationPolicy.request();
    if (status == PermissionStatus.granted) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Granted';
    } else if (status == PermissionStatus.denied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Denied';
    } else if (status == PermissionStatus.permanentlyDenied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission PermanentlyDenied';
      await openAppSettings();
    } else {
      isShowMessage.value = false;
    }
  }

  /// It uses to give permission for `Activity Recognition` access
  void get activityRecognition => _activityRecognition();

  _activityRecognition() async {
    isShowMessage.value = false;
    permissionMessage = ''.obs;
    final status = await Permission.activityRecognition.request();
    if (status == PermissionStatus.granted) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Granted';
    } else if (status == PermissionStatus.denied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission Denied';
    } else if (status == PermissionStatus.permanentlyDenied) {
      print(status);
      isShowMessage.value = true;
      permissionMessage.value = 'Permission PermanentlyDenied';
      await openAppSettings();
    } else {
      isShowMessage.value = false;
    }
  }
}
