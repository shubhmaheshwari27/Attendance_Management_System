import 'package:ams/responsive/mobile_screen.dart';
import 'package:ams/responsive/responsive.dart';
import 'package:ams/responsive/web_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primaryColor: Colors.blue,
      ),
      home: Responsive(mobilescreen: MobileScreen(), webScreen: WebScreen(),),
    );
  }
}

