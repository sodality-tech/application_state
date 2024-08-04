import Flutter
import UIKit

public class ApplicationStatePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "application_state", binaryMessenger: registrar.messenger())
    let instance = ApplicationStatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getAppIsForeground":
        let state = UIApplication.shared.applicationState
        switch UIApplication.shared.applicationState {
            case .background:
                result(false);
            case .active, .inactive:
                result(true);
            default:
                result(true);
        }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
