import 'package:flutter/material.dart';
//import 'package:sensordataflutter/screens/home_screen.dart';
import 'package:sensordataflutter/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: '/',
      //onGenerateRoute: RoutGenerator.generateRoute,
      home: LoginScreen(),
      routes: {
        //'/home' : (_) => HomeScreen(),
        '/login' : (_) => LoginScreen()
      },
    );
  }
}
