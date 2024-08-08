import 'dart:ffi';
import 'dart:io';

import 'package:application_state/generated/generated_bindings.dart';
import 'package:objective_c/objective_c.dart';

import 'application_state_platform_interface.dart';

typedef OnStateUpdate = void Function(bool);

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

  void applicationStateStream(OnStateUpdate onStateUpdate) {
    UIApplicationDelegate.implement(applicationDidBecomeActive_: (application) {
      final state = application.applicationState;

      final isForeground =
          (state != UIApplicationState.UIApplicationStateBackground);

      print(isForeground);
      onStateUpdate(isForeground);
    });

    // UIApplicationDelegate.addToBuilderAsListener(ObjCProtocolBuilder(),
    //     applicationDidBecomeActive_: (application) {
    //   final state = application.applicationState;

    //   final isForeground =
    //       (state != UIApplicationState.UIApplicationStateBackground);

    //   print(isForeground);
    //   onStateUpdate(isForeground);
    // }, applicationDidEnterBackground_: (application) {
    //   final state = application.applicationState;

    //   final isForeground =
    //       (state != UIApplicationState.UIApplicationStateBackground);

    //   print(isForeground);
    //   onStateUpdate(isForeground);
    // });

    // UIApplicationDelegate.applicationDidBecomeActive_
    //     .implementAsListener(ObjCProtocolBuilder(), (application) {
    //   final state = application.applicationState;

    //   final isForeground =
    //       (state != UIApplicationState.UIApplicationStateBackground);

    //   print(isForeground);
    //   onStateUpdate(isForeground);
    // });
  }
}
