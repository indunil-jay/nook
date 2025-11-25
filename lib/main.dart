import 'package:flutter/material.dart';
import 'package:nook/app.dart';
import 'app/di/injection.dart' as di;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies(); 
  runApp(const App());
}


