import 'package:flutter/cupertino.dart';
import 'package:rm_clean_arch_graphql/src/core/app.dart';
import 'package:rm_clean_arch_graphql/src/core/inject/inject.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Inject.init();
  runApp(const App());
}
