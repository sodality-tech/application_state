package com.example.application_state

import android.app.Application
import androidx.annotation.NonNull
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.ProcessLifecycleOwner

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** ApplicationStatePlugin */
class ApplicationStatePlugin: FlutterPlugin, MethodCallHandler, EventChannel.StreamHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var eventChannel: EventChannel
  private var eventSink: EventChannel.EventSink? = null

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "application_state")
    eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, "application_state_events")

    channel.setMethodCallHandler(this)
    eventChannel.setStreamHandler(this)

    val application = flutterPluginBinding.applicationContext as Application
    ProcessLifecycleOwner.get().lifecycle.addObserver(AppLifecycleObserver())
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getAppIsForeground") {
      // result.success("Android ${android.os.Build.VERSION.RELEASE}")
      val isForeground = isAppInForeground()
      result.success(isForeground)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
    eventChannel.setStreamHandler(null)
  }

  private fun isAppInForeground(): Boolean {
    val appLifecycleOwner = ProcessLifecycleOwner.get()
    return appLifecycleOwner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)
  }

  override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
    eventSink = events
  }

  override fun onCancel(arguments: Any?) {
    eventSink = null
  }

  private inner class AppLifecycleObserver : DefaultLifecycleObserver {
    override fun onStart(owner: LifecycleOwner) {
      eventSink?.success(true)
    }

    override fun onStop(owner: LifecycleOwner) {
      eventSink?.success(false)
    }
  }
}
