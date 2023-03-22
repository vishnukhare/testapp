import 'package:flutter/material.dart';
import 'package:testapp/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black54)),
      ),
      home: SplashScreen(),
    );
  }
}
