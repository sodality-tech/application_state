import 'package:flutter_test/flutter_test.dart';
import 'package:application_state/application_state.dart';
import 'package:application_state/application_state_platform_interface.dart';
import 'package:application_state/application_state_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockApplicationStatePlatform
//     with MockPlatformInterfaceMixin
//     implements ApplicationStatePlatform {

//   @override
//   Future<bool> getAppIsForeground() => Future.value(false);
// }

// void main() {
//   final ApplicationStatePlatform initialPlatform = ApplicationStatePlatform.instance;

//   test('$MethodChannelApplicationState is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelApplicationState>());
//   });

//   test('getPlatformVersion', () async {
//     ApplicationState applicationStatePlugin = ApplicationState();
//     MockApplicationStatePlatform fakePlatform = MockApplicationStatePlatform();
//     ApplicationStatePlatform.instance = fakePlatform;

//     expect(await applicationStatePlugin.getPlatformVersion(), '42');
//   });
// }
