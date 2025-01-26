import 'package:flutter/material.dart';

class Passkeys extends StatelessWidget {
  const Passkeys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 31, 43, 50),
        )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Passkeys',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Center(
              child: Image(
            image: AssetImage('images/zys.png'),
            height: 70,
          )),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
            child: Text(
          'Log in securely and protect',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
        Center(
            child: Text(
          'your account',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20.4),
          child: Row(
            children: [
              Icon(
                Icons.shield_outlined,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Create a passkey for a secure, easy\nway to log int your account.',
                  style: TextStyle(color: Colors.white,fontSize: 14.6),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20.4),
          child: Row(
            children: [
              Icon(
                Icons.fingerprint_outlined,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.4),
                child: Text(
                  'Log into WhatsApp with your face,\nfingerprintor screen lock.',
                  style: TextStyle(color: Colors.white,fontSize: 14.6),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20.4,vertical: 15),
          child: Row(
            children: [
              Icon(
                Icons.phonelink,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Your passkey is stored safely in\nyour password manager.',
                  style: TextStyle(color: Colors.white,fontSize: 14.6),
                ),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,minimumSize: Size(300,50)
          ),child: Text('Create passkey',style: TextStyle(color: Colors.black),)),
        )
      ]),
    );
  }
}
