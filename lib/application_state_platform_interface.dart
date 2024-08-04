import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'application_state_method_channel.dart';

abstract class ApplicationStatePlatform extends PlatformInterface {
  /// Constructs a ApplicationStatePlatform.
  ApplicationStatePlatform() : super(token: _token);

  static final Object _token = Object();

  static ApplicationStatePlatform _instance = MethodChannelApplicationState();

  /// The default instance of [ApplicationStatePlatform] to use.
  ///
  /// Defaults to [MethodChannelApplicationState].
  static ApplicationStatePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApplicationStatePlatform] when
  /// they register themselves.
  static set instance(ApplicationStatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> getAppIsForeground() {
    throw UnimplementedError('getAppIsForeground() has not been implemented.');
  }
}
