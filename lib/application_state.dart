import 'dart:io';

import 'package:application_state/generated/generated_bindings.dart';

import 'application_state_platform_interface.dart';

class ApplicationState {
  Future<bool> getAppIsForeground() {
    return ApplicationStatePlatform.instance.getAppIsForeground();
  }

  Stream<bool> appIsForegroundStream() {
    return ApplicationStatePlatform.instance.appIsForegroundStream();
  }

  bool syncAppIsForeground() {
    final state = UIApplication.getSharedApplication().applicationState;

    if (Platform.isIOS) {
      switch (state) {
        case UIApplicationState.UIApplicationStateActive:
        case UIApplicationState.UIApplicationStateInactive:
          return true;
        case UIApplicationState.UIApplicationStateBackground:
          return false;
      }
    } else {
      throw UnimplementedError();
    }
  }
}
