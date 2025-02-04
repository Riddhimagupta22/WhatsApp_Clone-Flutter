class ChatData{
  String name;
  String icon;
  bool isGroup;
  String time;
  String Currentmsg;
  String status;
  bool select;
  int id;


  ChatData({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.Currentmsg,
    required this.status,
    this.select = false,
    required this.id,

});}
