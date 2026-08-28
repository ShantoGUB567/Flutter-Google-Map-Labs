import 'package:flutter/material.dart';
import 'package:google_map/features/basic_map/screen/basic_google_map.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicGoogleMap(),
    );
  }
}
