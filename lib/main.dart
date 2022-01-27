import 'package:flutter/material.dart';
import 'package:rm_clean_arch_graphql/src/core/app.dart';
import 'package:rm_clean_arch_graphql/src/core/inject/inject.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Inject.init();
  runApp(const App());
}
