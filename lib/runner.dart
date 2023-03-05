import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon_template/di/app.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/util/logger/logger.dart';

/// App launch.
Future<void> run() async {
  /// It must be called so that the orientation does not fall.
  WidgetsFlutterBinding.ensureInitialized();

  /// Fix orientation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  FlutterError.onError = (errorDetails) {
    logger.e(errorDetails.exception, null, errorDetails.stack);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(error, null, stack);

    return true;
  };

  initDi();

  runApp(
    const App(),
  );
}
