import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:application_state/application_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  invokeApplicationStateCalls();
  runApp(const MyApp());
}

Future<void> invokeApplicationStateCalls() async {
  final applicationStatePlugin = ApplicationState();
  final Stopwatch stopwatch = Stopwatch()..start();
  for (int i = 0; i < 1000; i++) {
    await applicationStatePlugin.getAppIsForeground();
  }
  stopwatch.stop();
  print('[PlatformMethod] 1000 calls in ${stopwatch.elapsedMilliseconds}');
  stopwatch.reset();
  stopwatch.start();
  for (int i = 0; i < 1000; i++) {
    applicationStatePlugin.syncAppIsForeground();
  }
  stopwatch.stop();
  print('[FFI] 1000 calls in ${stopwatch.elapsedMilliseconds}');
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isForeground = false;
  final _applicationStatePlugin = ApplicationState();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool isForeground;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      isForeground = await _applicationStatePlugin.getAppIsForeground();
    } on PlatformException {
      isForeground = false;
    }

    // _applicationStatePlugin.appIsForegroundStream().listen((data) {
    //   print(data);
    // });

    _applicationStatePlugin.applicationStateStream((isForeground) {
      print('invoked');
      print('[FFI] $isForeground');
    });

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _isForeground = isForeground;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_isForeground\n'),
        ),
      ),
    );
  }
}
