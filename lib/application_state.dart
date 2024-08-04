import 'application_state_platform_interface.dart';

class ApplicationState {
  static Future<bool> getAppIsForeground() {
    return ApplicationStatePlatform.instance.getAppIsForeground();
  }
}
