import Flutter
import UIKit

public class ApplicationStatePlugin: NSObject, FlutterPlugin, FlutterStreamHandler {
  private var eventSink: FlutterEventSink?
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "application_state", binaryMessenger: registrar.messenger())
    let eventChannel = FlutterEventChannel(name: "application_state_events", binaryMessenger: registrar.messenger())
    
    let instance = ApplicationStatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    eventChannel.setStreamHandler(instance)
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
    
  public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
      self.eventSink = events
          NotificationCenter.default.addObserver(
              self,
              selector: #selector(self.applicationStateChanged),
              name: UIApplication.didBecomeActiveNotification,
              object: nil)
          NotificationCenter.default.addObserver(
              self,
              selector: #selector(self.applicationStateChanged),
              name: UIApplication.didEnterBackgroundNotification,
              object: nil)
          return nil
  }
    
  public func onCancel(withArguments arguments: Any?) -> FlutterError? {
      NotificationCenter.default.removeObserver(self)
          self.eventSink = nil
          return nil
  }
    
    
    @objc private func applicationStateChanged() {
      let state = UIApplication.shared.applicationState
      switch state {
      case .background:
          eventSink?(false)
      case .active, .inactive:
          eventSink?(true)
      @unknown default:
          eventSink?(true)
      }
    }
}
