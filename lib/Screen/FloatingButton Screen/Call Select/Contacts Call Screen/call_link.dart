import 'package:flutter/material.dart';

class CallLink extends StatefulWidget {
  const CallLink({super.key});

  @override
  State<CallLink> createState() => _CallLinkState();
}

class _CallLinkState extends State<CallLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 16, crossAxisSpacing: 16),
            itemCount: 12,
            itemBuilder: (context, int index) {
              if(index<9){
                return;
              }
            },
          )
        ],
      ),
    );
  }
}
