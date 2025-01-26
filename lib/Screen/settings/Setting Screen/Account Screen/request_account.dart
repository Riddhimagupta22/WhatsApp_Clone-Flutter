import 'package:app_clone/Screen/widgets/custo-widget.dart';
import 'package:flutter/material.dart';

class RequestAccount extends StatefulWidget {
  const RequestAccount({super.key});

  @override
  State<RequestAccount> createState() => _RequestAccountState();
}

class _RequestAccountState extends State<RequestAccount> {
  @override
  Widget build(BuildContext context) {
    var srcwidth = MediaQuery.of(context).size.width;
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
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Request account info',
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: srcwidth * 0.057, top: srcwidth * 0.02),
              child: Text(
                'Account information',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(
                Icons.access_time_outlined,
                color: Colors.grey,
              ),
              title: Padding(
                padding: EdgeInsets.only(
                  left: srcwidth * 0.018,
                ),
                child: Text(
                  'Request sent',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text(
                  'Read by 28 January 2025',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Your report will be ready in about 1 day. You'll have a few weeks to download your report after it's available.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Your request will be canceled if you make changes to your account such as changing your number or deleting your account.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(
                Icons.access_time_outlined,
                color: Colors.grey,
              ),
              title: Padding(
                padding: EdgeInsets.only(
                  left: srcwidth * 0.018,
                ),
                child: Text(
                  'Create reports automatically',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "A new report will be created every month.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              child: Text(
                'Learn more',
                style: TextStyle(color: Colors.lightBlue),
              ),),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Text(
                  'Channels activity',
                  style: TextStyle(color: Colors.grey),
                ),
            ),Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
              ListTile(
                leading: Icon(
                  Icons.access_time_outlined,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: srcwidth * 0.018,
                  ),
                  child: Text(
                    'Request sent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.042,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018),
                  child: Text(
                    'Read by 29 January 2025',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 31, 43, 50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your report will be ready in about 1 day. You'll have a few weeks to download your report after it's available.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  "Your request will be canceled if you make changes to your account such as changing your number or deleting your account.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 31, 43, 50),
              ),
              ListTile(
                leading: Icon(
                  Icons.access_time_outlined,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: srcwidth * 0.018,
                  ),
                  child: Text(
                    'Create reports automatically',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.042,
                    ),
                  ),
                ),
                trailing: utils().getxswitch(),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 31, 43, 50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  "A new report will be created every month.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Text(
                  'Learn more',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
