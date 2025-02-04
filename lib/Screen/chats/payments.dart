import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var icons = [
      CircleAvatar(
        child: Icon(
          Icons.currency_rupee_outlined,
          color: Colors.green,
        ),
        backgroundColor: Colors.transparent,
      ),
      CircleAvatar(
        child: Icon(
          Icons.qr_code,
          color: Colors.green,
        ),
        backgroundColor: Colors.transparent,
      ),
    ];
    var label = ['Send payment', 'Scan any UPI QR code'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff13181C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Payments",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white, width: 0.1)),
            color: const Color(0xff0B1014),
          ),
          child: Column(
            children: [
              Container(
                height: height * 0.17,
                decoration: BoxDecoration(
                    color: const Color(0xff13181C),
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xff0B1014), width: 8))),
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: icons.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: icons[index],
                        title: Text(
                          label[index],
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: height * 0.2,
                width: width * 1,
                decoration: BoxDecoration(
                    color: Color(0xff13181C),
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xff0B1014), width: 8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 8),
                      child: Text(
                        "Chat with businesses",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: height * 0.1,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.green, width: 2),
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.blue,
                                    backgroundImage: AssetImage(
                                        'images/maha-mumbai-metro-operation-corporation-limited-removebg-preview.png'),
                                  ),
                                ),
                                Text(
                                  "Maha Mumbai",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: height * 0.1,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.green, width: 2),
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        'https://i0.wp.com/phidesign.in/wp-content/uploads/2022/05/delhi-transport-corporation-logo-1-1.jpg?resize=480%2C298&ssl=1'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                                Text(
                                  "Delhi Transport",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: height * 0.1,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.green, width: 2),
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        'https://s.yimg.com/fz/api/res/1.2/MKmq8dwhg_2ycW3f9EecmA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MTc4/https://s.yimg.com/zb/imgv1/dd4f5708-d842-3c2c-ad01-83c76d88840d/t_500x300'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                                Text(
                                  "Nagpur Metro",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: height * 0.1,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.green, width: 2),
                                  ),
                                  child: const CircleAvatar(
                                    radius: 30,
                                    child: Icon(
                                      Icons.person_search,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.19,
                width: width * 1,
                decoration: BoxDecoration(
                    color: Color(0xff13181C),
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xff0B1014), width: 8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 8),
                      child: Text(
                        "History",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                              height: height * 0.1,
                              child: Icon(Icons.history_edu,color: Colors.grey,size: 50,)),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "No Payment History",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                                fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.24,
                width: width * 1,
                decoration: BoxDecoration(
                    color: Color(0xff13181C),
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xff0B1014), width: 8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 8),
                      child: Text(
                        "Payment methods",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.lock,
                              size: 26,
                              color: Colors.grey,
                            ),
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Whatsapp doesn't store your full bank account number,debit card or UPI PIN info.",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Learn more",
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 10),
                      child: ListTile(
                        leading: Icon(Icons.add_circle_outline_rounded,
                            color: Colors.white70),
                        title: Text(
                          "Add payment method",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.08,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Color(0xff13181C),
                  border: Border(
                    bottom: BorderSide(color: Color(0xff0B1014), width: 8),
                  ),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.white70,
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
              Container(
                height: height * 0.08,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Color(0xff13181C),
                  border: Border(
                    bottom: BorderSide(color: Color(0xff0B1014), width: 8),
                  ),
                ),
                child: ListTile(
                  leading: Icon(Icons.delete, color: Colors.white70),
                  title: Text(
                    "Remove payments information",
                    style: TextStyle(
                        color: Colors.white38, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                  height: height * 0.08,
                  child: Image.network(
                      "https://cdn.iconscout.com/icon/free/png-256/free-upi-logo-icon-download-in-svg-png-gif-file-formats--unified-payments-interface-payment-money-transfer-logos-icons-1747946.png?f=webp"))
            ],
          ),
        ),
      ),
    );
  }
}
