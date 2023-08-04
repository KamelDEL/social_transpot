import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_transport/auth/auth.dart';
import 'package:social_transport/firebase_options.dart';
import 'package:social_transport/themes/dark_theme.dart';
import 'package:social_transport/themes/light_theme.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
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
      home: const AuthPage(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}