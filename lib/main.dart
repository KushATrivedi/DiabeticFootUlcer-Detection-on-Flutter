import 'package:flutter/material.dart';
import 'package:DFUCopy/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:DFUCopy/userprovider.dart';

void main() {
  runApp(
      ChangeNotifierProvider
        (
        create: (context) => UserProvider(),
        child: MyApp(),
      ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(
          secondary: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

