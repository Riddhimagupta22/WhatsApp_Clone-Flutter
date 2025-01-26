import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwoStepverification extends StatelessWidget {
  const TwoStepverification({super.key});

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
            'Two-step verification',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
                child: Image(
              image: AssetImage(
                  'images/WhatsApp_Image_2025-01-26_at_16.02.21-removebg-preview.png'),
              height: 60,
            )),
          ),
          Center(
            child: Text(
              "Two-step verification is on. You'll need to enter",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Center(
            child: Text(
              "your PIN if you register your phone number on",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          RichText(
              text: TextSpan(
                  text: 'WhatsApp again.',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  children: [
                TextSpan(
                  text: 'Learn more',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 14),
                )
              ])),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
          ),
          ListTile(
            onTap: (){
              Get.defaultDialog(
                  titlePadding: EdgeInsets.symmetric(vertical: 10),
                  middleText: 'Turn off two-step verification',
                  cancel: TextButton(onPressed: (){Get.back();}, child: Text('Cancel')),
                  confirm: TextButton(onPressed: (){Get.back();}, child: Text('Ok'))
              );
            },
            title: Text('Turn off',style: TextStyle(color: Colors.grey,fontSize: 13),),
            leading: Icon(Icons.highlight_remove_sharp, color: Colors.grey,),
          ),
          ListTile(
            title: Text('Change PIN',style: TextStyle(color: Colors.grey,fontSize: 13),),
            leading: Icon(Icons.password_outlined, color: Colors.grey,),
          )
        ]));
  }
}
