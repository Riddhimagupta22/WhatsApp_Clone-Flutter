import 'package:flutter/material.dart';

class CallNo extends StatelessWidget {
  const CallNo({super.key});

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
              size: 25,
            )),
        title: Text(
          "Create call link",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 14),
             child: Text("Anyone with WhatsApp can use this link to join this call. Only share with people you trust",
             style: TextStyle(color: Colors.white),),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 20.0),
             child: ListTile(
               leading: CircleAvatar(
                 radius: 26,
                 backgroundColor:Colors.green ,
                 child: Icon(Icons.videocam_outlined,color: Colors.black,size: 28,),
               ),
               title: Text('https://call.whatsapp.com/video/abDEFg1HIj1K1lmn2op12',
               style: TextStyle(color: Colors.green,
               fontSize: 13.2),),
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 70),
              child: ListTile(

                title: Text('Call type',
                  style: TextStyle(color: Colors.white,),),
                subtitle: Text('Video',
                  style: TextStyle(color: Colors.grey,),),
              ),
            ),
            Divider(thickness:0.5,color: Color.fromARGB(255, 31, 43, 50),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5),
              child: ListTile(
                leading:  Icon(Icons.turn_slight_right,color: Colors.grey),

                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,),
                  child: Text('Share link via WhatsApp',
                    style: TextStyle(color: Colors.white,),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 5),
              child: ListTile(
                leading:  Icon(Icons.copy_rounded,color: Colors.grey),

                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Copy link',
                    style: TextStyle(color: Colors.white,),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 5),
              child: ListTile(
                leading:  Icon(Icons.share_outlined,color: Colors.grey),

                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Share link',
                    style: TextStyle(color: Colors.white,),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
