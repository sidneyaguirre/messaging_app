import 'package:flutter/material.dart';
import 'package:mock_messaging_app/mock_messaging.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)),
      theme: ThemeData.light(useMaterial3: true),
      home: Feed(currentUser: user_0),
    );
  }
}
