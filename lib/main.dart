import 'package:finance_mate/pages/HomePage.dart';
import 'package:finance_mate/pages/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main ()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const Homepage(),
    );
  }
}
