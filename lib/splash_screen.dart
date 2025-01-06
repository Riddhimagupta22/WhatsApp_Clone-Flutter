import 'dart:async';

import 'package:app_clone/nav_rail.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Navigationrail()));
    });
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Center(
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 30, end: 100),
                duration: Duration(seconds: 2),
                builder: (BuildContext context, double value, child) {
                  return InkWell(
                    child: CircleAvatar(
                      backgroundColor: Color(0xff0a131a),
                      backgroundImage:
                          AssetImage("images/whatsapp-removebg-preview.png"),
                      radius: value,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: size.height * .25,
          ),
          Text(
            'from',
            style: TextStyle(
                color: Colors.white30,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Center(
                    child: Image(
                      image: AssetImage("images/metalogo-removebg-preview.png"),
                      height: size.height * .02,
                    ),
                  ),
                  SizedBox(
                    width: size.width * .01,
                  ),
                  Center(
                    child: Text(
                      "Meta",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
