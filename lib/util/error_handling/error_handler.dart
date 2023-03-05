import 'package:elementary/elementary.dart';
import 'package:hackathon_template/util/logger/logger.dart';
import 'package:injectable/injectable.dart';

/// Error handler that print info to console
@Singleton(as: ErrorHandler)
class DefaultErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    logger.e(error, null, stackTrace);
  }
}
