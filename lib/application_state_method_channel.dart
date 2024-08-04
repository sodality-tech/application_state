import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'application_state_platform_interface.dart';

/// An implementation of [ApplicationStatePlatform] that uses method channels.
class MethodChannelApplicationState extends ApplicationStatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('application_state');

  @override
  Future<bool> getAppIsForeground() async {
    final isForeground =
        await methodChannel.invokeMethod<bool>('getAppIsForeground');
    return isForeground ?? true;
  }
}
