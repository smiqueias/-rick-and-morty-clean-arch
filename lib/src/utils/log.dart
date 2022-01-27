import 'dart:developer' as developer;

class Log {
  static void log(String message, {Object? error, StackTrace? stackTrace}) {
    developer.log(
      message,
      name: "RM-Clean-Arch",
      error: error,
      stackTrace: stackTrace,
    );
  }
}
