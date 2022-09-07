import 'package:flutter/material.dart';
import 'package:web_call/views/splash_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FLUTTER_WEBVIEW",
      debugShowCheckedModeBanner: false,
      home: SplashScrren(),
    );
  }
}
  
