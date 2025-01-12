import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Auth/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0,
                vertical: 10),
                child: Image.asset(
                  "images/WhatsApp_Image_2025-01-10_at_22.47.31-removebg-preview.png",
                  color: Color(0xFF00A884),
                ),
              )),
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    "Welcome to WhatsApp",
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Read our ',
                        style: TextStyle(
                          color: Colors.grey,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy. ',
                            style: TextStyle(
                                color: Colors.blue,
                                ),
                          ),
                          const TextSpan(
                              text: 'Tap "Agree and continue" to accept the '),
                          TextSpan(
                            text: 'Terms of Services.',
                            style: TextStyle(
                                color: Colors.blue,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42,
                    width: MediaQuery.of(context).size.width-100,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(Login());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(),
                          backgroundColor: Color(0xFF00A884),
                          foregroundColor: Color(0xFF111b21),
                          splashFactory: NoSplash.splashFactory,
                          elevation: 0,
                          shadowColor: Colors.transparent
                        ),
                        child: Text("AGREE AND CONTINUE")),
                  ),
                ],
              )),
            ],
        ));
  }
}
