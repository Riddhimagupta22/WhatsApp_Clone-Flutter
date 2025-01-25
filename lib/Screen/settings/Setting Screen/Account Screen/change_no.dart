import 'package:flutter/material.dart';

class ChangeNoPage extends StatelessWidget {
  const ChangeNoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          'Change number',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage('images/abc.png'),height: 60,)
            ),
            SizedBox(height:size.height*.04 ),
            Text(
              "Changing your phone number will\nmigrate your account info, groups &\nsettings.",
              style: TextStyle(color: Colors.white,fontSize: 16.8),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,),
              child: Text(
                "Before proceeding,please confirm that you\nare able to receive SMS or calls at your new\nnumber.",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            Center(
              child: Text(
                "If you have both a new phone & a new\nnumber,first change your number on your\nold phone.",
                style: TextStyle(color: Colors.white54,fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290.0),
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,), child: Text('Next',style: TextStyle(color: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }
}
