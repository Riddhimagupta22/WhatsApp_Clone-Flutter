import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
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
          'Delete this account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.warning_amber_outlined,
                color: Colors.red,
              ),
              title: Text(
                'If you delete this account:',
                style: TextStyle(color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 65),
              child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Text(
                          'The account will be deleted from\nWhatsApp and all your devices',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Your messages history will be erased',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'You will be removed from all your\nWhatsApp groups',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Your Google storage backup will be\ndeleted',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Delete your payments info',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          'Any channels you created will be deleted',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 31, 43, 50),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.send_to_mobile_outlined,
                color: Colors.white54,
                size: 28,
              ),
              title: Text(
                'Change number instead?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 88.0,bottom: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child:
                      Text('Change number', style: TextStyle(color: Colors.black))),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 65),
              child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Text(
                          'To delete your account wconfirm your\ncountry code and enter your phone\nnumber.',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 65),
              child: DropdownButtonFormField<String>(
                value: 'India',
                items: ['India', 'Pakistan','South Africa']
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
              ),),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Row(children: [
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
                      labelText: 'Phone',
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20,top: 12),
                    child: TextFormField(
                      style: TextStyle(color:Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                    ),
                  ),)

              ], ),

            ),
            Padding(
              padding: const EdgeInsets.only(right: 88.0,bottom: 40,top: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child:
                  Text('Delete account', style: TextStyle(color: Colors.black))),
            ),
          ],
        ),
      ),
    );
  }
}
