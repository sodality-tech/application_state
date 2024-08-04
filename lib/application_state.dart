import 'application_state_platform_interface.dart';

class ApplicationState {
  Future<bool> getAppIsForeground() {
    return ApplicationStatePlatform.instance.getAppIsForeground();
  }

  Stream<bool> appIsForegroundStream() {
    return ApplicationStatePlatform.instance.appIsForegroundStream();
  }
}
