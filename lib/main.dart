import 'package:flutter/material.dart';
import 'package:maktab28/pages/home_page.dart';
import 'package:maktab28/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     routes: {
      HomePage.path:(context) => const HomePage(),
      SplashPage.path:(context) => const SplashPage(),
     },
     home: const SplashPage(),
    );
  }
}