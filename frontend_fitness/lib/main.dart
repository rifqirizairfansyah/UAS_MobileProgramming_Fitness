
import 'package:flutter/services.dart';
import 'package:frontend_fitness/ui/login.dart';
import 'package:frontend_fitness/ui/startup.dart';
import 'package:frontend_fitness/ui/test.dart';
import 'package:flutter/material.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fitness',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        home: StartUp()
    );
  }
}