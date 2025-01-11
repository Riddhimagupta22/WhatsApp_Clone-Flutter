import 'package:app_clone/feature/welcome.dart';
import 'package:app_clone/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        popupMenuTheme: (const PopupMenuThemeData(
          iconColor: Colors.white,
          color: Color(0xff0a131a),
        )),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF111B21),
        ),
        scaffoldBackgroundColor: Color(0xFF111B21),
      ),
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
