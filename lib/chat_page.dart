import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/main.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = Color.fromRGBO(39, 193, 169, 1.0);
const conversationColor = Color.fromRGBO(239, 255, 252, 1.0);
const backgroundColor = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          ),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
          ),
        ],
        backgroundColor: backgroundColor,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 18, 15, 30),
        decoration: BoxDecoration(
          color: conversationColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(child: ChatingSection()),
      ),
    );
  }
}

class ChatingSection extends StatelessWidget {
  final String senderProfile = 'images/avatar/a3.jpg';
  final String receiverProfile = 'images/avatar/a6.jpg';

  final List chatMessages = [
    //1: Text 2: image 3: audio
    {
      'type': 1,
      'view': '17.14',
      'content': 'But I must explain to',
      'sender': true,
    },
    {
      'type': 1,
      'view': '17.35',
      'content': 'Lorem Ipsum dolor sit amel',
      'sender': false,
    },
    {
      'type': 1,
      'view': '19.17',
      'content': 'Lorem Ipsum dolor sit',
      'sender': true,
    },
    {
      'type': 2,
      'view': '17.45',
      'content': 'images/avatar/a4.jpg',
      'sender': true,
    },
    {
      'type': 1,
      'view': '17.45',
      'content': 'Lorem Ipsum dolor sit amel, consetetur sadipshing elitr, sed',
      'sender': true,
    },
    {
      'type': 3,
      'view': '22.45',
      'content': 'Lorem Ipsum dolor sit amel, consetetur sadipshing elitr, sed',
      'sender': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //----------------------------------------------
        //--------Entete de la page de Chat ------------
        //----------------------------------------------
        Column(
          children: [
            Text(
              "Alla Burda",
              style: GoogleFonts.inter(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Was online 56 seconde ago",
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 45),
          ],
        ),
        //------------------------------------------------
        //--------Listing ds message du Chat--------------
        //------------------------------------------------
        Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    right: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    "But I must explain to",
                    style: GoogleFonts.inter(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "But I must explain to",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(receiverProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "But I must explain to",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    right: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    "But I must explain to",
                    style: GoogleFonts.inter(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  /* decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ), */
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 26,
                  ),
                  width: 215,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/avatar/a1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  /* decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ), */
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    right: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    "But I must explain to",
                    style: GoogleFonts.inter(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "17:14",
                      style: GoogleFonts.inter(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 13.0,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 26,
                  ),
                  padding: EdgeInsets.all(6),
                  width: 215,
                  height: 55,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    //left: 20,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(receiverProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
        //-------------------------------------------------
        //-------Champs de texte d'envoi de message
        //-------------------------------------------
        Row(
          children: [
            Container(
              width: 290,
              height: 43,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.insert_emoticon,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.upload_outlined,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.image,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.mic_none_sharp,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
          ],
        )
      ],
    );
  }
}
