import 'package:app_clone/feature/welcome.dart';
import 'package:app_clone/feature/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'Screen/settings/Setting Screen/Account Screen/change_no.dart';
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
        popupMenuTheme: PopupMenuThemeData(
          iconSize: 25,
          iconColor: Colors.white,
         color:  Color.fromARGB(255,11,17,21),
        ),
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color.fromARGB(255,11,17,21),),
        scaffoldBackgroundColor:Color.fromARGB(255,11,17,21),
      ),
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
