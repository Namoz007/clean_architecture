import "../../src.dart";

@lazySingleton
class PermissionHandlerService{

  /// Check for permissions

  Future<bool> checkCameraPermission() async {
    final status = await Permission.camera.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.camera.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkMicrophonePermission() async {
    final status = await Permission.microphone.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.microphone.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkPhotosPermission() async {
    final status = await Permission.photos.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.photos.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkStoragePermission() async {
    final status = await Permission.storage.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.storage.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkManageExternalStoragePermission() async {
    final status = await Permission.manageExternalStorage.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.manageExternalStorage.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkLocationPermission() async {
    final status = await Permission.location.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.location.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkLocationWhenInUsePermission() async {
    final status = await Permission.locationWhenInUse.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.locationWhenInUse.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkLocationAlwaysPermission() async {
    final status = await Permission.locationAlways.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.locationAlways.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkActivityRecognitionPermission() async {
    final status = await Permission.activityRecognition.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.activityRecognition.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkSensorsPermission() async {
    final status = await Permission.sensors.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.sensors.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkBluetoothPermission() async {
    final status = await Permission.bluetooth.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.bluetooth.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkBluetoothScanPermission() async {
    final status = await Permission.bluetoothScan.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.bluetoothScan.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkBluetoothAdvertisePermission() async {
    final status = await Permission.bluetoothAdvertise.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.bluetoothAdvertise.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkBluetoothConnectPermission() async {
    final status = await Permission.bluetoothConnect.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.bluetoothConnect.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkNearbyWifiDevicesPermission() async {
    final status = await Permission.nearbyWifiDevices.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.nearbyWifiDevices.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkPhonePermission() async {
    final status = await Permission.phone.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.phone.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkAudioPermission() async {
    final status = await Permission.audio.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.audio.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkSystemAlertWindowPermission() async {
    final status = await Permission.systemAlertWindow.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.systemAlertWindow.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkRequestInstallPackagesPermission() async {
    final status = await Permission.requestInstallPackages.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.requestInstallPackages.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkAccessNotificationPolicyPermission() async {
    final status = await Permission.accessNotificationPolicy.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.accessNotificationPolicy.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkVideosPermission() async {
    final status = await Permission.videos.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.videos.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkCalendarPermission() async {
    final status = await Permission.calendar.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.calendar.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkRemindersPermission() async {
    final status = await Permission.reminders.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.reminders.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkSpeechPermission() async {
    final status = await Permission.speech.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.speech.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkScheduleExactAlarmPermission() async {
    final status = await Permission.scheduleExactAlarm.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.scheduleExactAlarm.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkCriticalAlertsPermission() async {
    final status = await Permission.criticalAlerts.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.criticalAlerts.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkAppTrackingTransparencyPermission() async {
    final status = await Permission.appTrackingTransparency.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.appTrackingTransparency.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkAccessMediaLocationPermission() async {
    final status = await Permission.accessMediaLocation.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.accessMediaLocation.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  Future<bool> checkIgnoreBatteryOptimizationsPermission() async {
    final status = await Permission.ignoreBatteryOptimizations.status;
    if (status.isGranted) return true;
    if (status.isDenied) return (await Permission.ignoreBatteryOptimizations.request()).isGranted;
    if (status.isPermanentlyDenied) await openAppSettings();
    return false;
  }

  ///Request for permission

  Future<bool> requestCameraPermission() async {
    final status = await Permission.camera.request();
    return status.isGranted;
  }

  Future<bool> requestMicrophonePermission() async {
    final status = await Permission.microphone.request();
    return status.isGranted;
  }

  Future<bool> requestPhotosPermission() async {
    final status = await Permission.photos.request();
    return status.isGranted;
  }

  Future<bool> requestStoragePermission() async {
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<bool> requestManageExternalStoragePermission() async {
    final status = await Permission.manageExternalStorage.request();
    return status.isGranted;
  }

  Future<bool> requestLocationPermission() async {
    final status = await Permission.location.request();
    return status.isGranted;
  }

  Future<bool> requestLocationWhenInUsePermission() async {
    final status = await Permission.locationWhenInUse.request();
    return status.isGranted;
  }

  Future<bool> requestLocationAlwaysPermission() async {
    final status = await Permission.locationAlways.request();
    return status.isGranted;
  }

  Future<bool> requestActivityRecognitionPermission() async {
    final status = await Permission.activityRecognition.request();
    return status.isGranted;
  }

  Future<bool> requestSensorsPermission() async {
    final status = await Permission.sensors.request();
    return status.isGranted;
  }

  Future<bool> requestBluetoothPermission() async {
    final status = await Permission.bluetooth.request();
    return status.isGranted;
  }

  Future<bool> requestBluetoothScanPermission() async {
    final status = await Permission.bluetoothScan.request();
    return status.isGranted;
  }

  Future<bool> requestBluetoothAdvertisePermission() async {
    final status = await Permission.bluetoothAdvertise.request();
    return status.isGranted;
  }

  Future<bool> requestBluetoothConnectPermission() async {
    final status = await Permission.bluetoothConnect.request();
    return status.isGranted;
  }

  Future<bool> requestNearbyWifiDevicesPermission() async {
    final status = await Permission.nearbyWifiDevices.request();
    return status.isGranted;
  }

  Future<bool> requestPhonePermission() async {
    final status = await Permission.phone.request();
    return status.isGranted;
  }

  Future<bool> requestAudioPermission() async {
    final status = await Permission.audio.request();
    return status.isGranted;
  }

  Future<bool> requestSystemAlertWindowPermission() async {
    final status = await Permission.systemAlertWindow.request();
    return status.isGranted;
  }

  Future<bool> requestInstallPackagesPermission() async {
    final status = await Permission.requestInstallPackages.request();
    return status.isGranted;
  }

  Future<bool> requestAccessNotificationPolicyPermission() async {
    final status = await Permission.accessNotificationPolicy.request();
    return status.isGranted;
  }

  Future<bool> requestVideosPermission() async {
    final status = await Permission.videos.request();
    return status.isGranted;
  }

  Future<bool> requestCalendarPermission() async {
    final status = await Permission.calendar.request();
    return status.isGranted;
  }

  Future<bool> requestRemindersPermission() async {
    final status = await Permission.reminders.request();
    return status.isGranted;
  }

  Future<bool> requestSpeechPermission() async {
    final status = await Permission.speech.request();
    return status.isGranted;
  }

  Future<bool> requestScheduleExactAlarmPermission() async {
    final status = await Permission.scheduleExactAlarm.request();
    return status.isGranted;
  }

  Future<bool> requestCriticalAlertsPermission() async {
    final status = await Permission.criticalAlerts.request();
    return status.isGranted;
  }

  Future<bool> requestAppTrackingTransparencyPermission() async {
    final status = await Permission.appTrackingTransparency.request();
    return status.isGranted;
  }

  Future<bool> requestAccessMediaLocationPermission() async {
    final status = await Permission.accessMediaLocation.request();
    return status.isGranted;
  }

  Future<bool> requestIgnoreBatteryOptimizationsPermission() async {
    final status = await Permission.ignoreBatteryOptimizations.request();
    return status.isGranted;
  }
}