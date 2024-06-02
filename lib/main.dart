import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/shared_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefManager().init(); // Initialize shared preferences
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Example',
      home: ImagePickerScreen(),
    );
  }
}
