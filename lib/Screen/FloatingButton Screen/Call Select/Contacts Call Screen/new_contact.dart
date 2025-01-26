import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
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
          "New contact",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 17),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.perm_identity_sharp, color: Colors.grey),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      style: TextStyle(color:Colors.white),
                      decoration: InputDecoration(
                          labelText: 'First name',
                          labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                    ),
                  ),
                ),))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, top: 40, right: 20),
              child: TextFormField(
                style: TextStyle(color:Colors.white),
                decoration: InputDecoration(
                    labelText: 'Last name',
                    labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),))
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Row(children: [
                Icon(Icons.local_phone_outlined, color: Colors.grey),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34.0),
                    child: DropdownButtonFormField<String>(
                        value: 'IN +91',
                        items: ['IN +91', 'PK +92','ZA +27']
                            .map((code) => DropdownMenuItem(
                              value: code,
                              child: Container(
                                child: Text(code,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                              ),
                            )).toList(),
                      onChanged: (value){},decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: 'Country',
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20,),
                    child: TextFormField(
                      style: TextStyle(color:Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Phone',
                          labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                  ),
                ),)

              ], ),

            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Row(children: [
                Icon(Icons.file_upload_outlined, color: Colors.grey),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34.0),
                    child: DropdownButtonFormField<String>(
                      value: 'admin11@gmail.com',
                      items: ['admin11@gmail.com', 'admin22@gmail.com','Phone']
                          .map((code) => DropdownMenuItem(
                        value: code,
                        child: Container(
                          child: Text(code,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                        ),
                      )).toList(),
                      onChanged: (value){},decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: 'Save to',
                    ),
                    ),
                  ),
                ),
              ], ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:102.0,top: 10),
              child: TextButton(onPressed: (){}, child: Text('Add Information',style: TextStyle(color: Colors.green),)),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,minimumSize: Size(300,50)
            ),child: Text('Save',style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
