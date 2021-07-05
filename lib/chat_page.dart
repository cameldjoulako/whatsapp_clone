import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

const dGreen = Color.fromRGBO(39, 193, 169, 1.0);
const dGreenWhite = Color.fromRGBO(239, 255, 252, 1.0);
const dBlack = Colors.black;

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
      backgroundColor: dBlack,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
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
        backgroundColor: dBlack,
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(25, 18, 15, 30),
        decoration: BoxDecoration(
          color: dGreenWhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(child: ChatingSection()),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        color: dGreenWhite,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 290,
                height: 43,
                decoration: BoxDecoration(
                  color: dGreen,
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
                  left: 25,
                ),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: dGreen,
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
          ),
        ),
      ),
    );
  }
}

class ChatingSection extends StatelessWidget {
  final String senderProfile = 'images/avatar/a3.jpg';
  final String receiverProfile = 'images/avatar/a6.jpg';

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
            TextMessage(
              "But I must explain to",
              "17:14",
              senderProfile,
              1,
              0,
            ),
            SizedBox(height: 15),
            TextMessage(
              "But I must explain to",
              "17:14",
              receiverProfile,
              0,
              0,
            ),
            SizedBox(height: 5),
            TextMessage(
              "But I must explain to",
              "17:14",
              senderProfile,
              0,
              1,
            ),
            SizedBox(height: 15),
            TextMessage(
              "But I must explain to you",
              "17:14",
              senderProfile,
              1,
              0,
            ),
            SizedBox(height: 5),
            ImageMessage(
              'images/avatar/a1.jpg',
              "18:09",
              "Lorem upson, vendo car dur te la maniana quon te resalna",
            ),
            SizedBox(height: 8),
            AudioMessage("18:05", senderProfile)
          ],
        ),
      ],
    );
  }
}

//-------------------------------------------------------------------------
//-------------------- Widget des messages Texte --------------------------
//-------------------------------------------------------------------------
class TextMessage extends StatelessWidget {
  String message, date, senderProfile;

  //isReceive permet de savoir qui reçoi ou envoi le message
  //isDirect permet de savoir si le message est directement le suivant d'un message envoyé par la même persone
  int isReceiver, isDirect;

  TextMessage(this.message, this.date, this.senderProfile, this.isReceiver,
      this.isDirect);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (this.isReceiver == 1 && this.isDirect == 0)
          Container(
            margin: EdgeInsets.only(
              right: 16,
            ),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(this.senderProfile),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
          Container(
            width: 60,
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: dGreen,
                  size: 13.0,
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  this.date,
                  style: GoogleFonts.inter(
                    color: dGreen,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: this.isReceiver == 1
                ? EdgeInsets.only(
                    right: 25,
                  )
                : EdgeInsets.only(
                    left: 20,
                  ),
            padding: EdgeInsets.all(6),
            height: 55,
            decoration: this.isReceiver == 1
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  )
                : BoxDecoration(
                    color: dGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
            child: Text(
              this.message,
              style: GoogleFonts.inter(
                color: this.isReceiver == 1 ? dGreen : Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        if (this.isReceiver == 1 && this.isDirect == 0)
          Container(
            width: 60,
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: dGreen,
                  size: 13.0,
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  this.date,
                  style: GoogleFonts.inter(
                    color: dGreen,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        if (isDirect == 0 && this.isReceiver == 0)
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 10,
            ),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(this.senderProfile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        if (this.isReceiver == 0 && isDirect == 1)
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 10,
            ),
            width: 45,
            height: 45,
          ),
      ],
    );
  }
}

//-------------------------------------------------------------------------
//-------------------- Widget des messages Audio --------------------------
//-------------------------------------------------------------------------
class AudioMessage extends StatelessWidget {
  var date, senderProfile;
  AudioMessage(this.date, this.senderProfile);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          child: Row(
            children: [
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 7.0,
              ),
              Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              left: 15,
            ),
            padding: EdgeInsets.all(6),
            height: 55,
            decoration: BoxDecoration(
              color: dGreen,
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
        ),
        Container(
          margin: EdgeInsets.only(
            left: 16,
            right: 10,
          ),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(this.senderProfile),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

//-------------------------------------------------------------------------
//-------------------- Widget des messages Images --------------------------
//-------------------------------------------------------------------------
class ImageMessage extends StatelessWidget {
  String image, date, description;
  ImageMessage(this.image, this.date, this.description);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: 16,
            //left: 20,
          ),
          width: 45,
          height: 45,
        ),
        Expanded(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 26,
                  ),
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(this.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    right: 25,
                  ),
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Wrap(children: [
                    Text(
                      this.description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: dGreen,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
              SizedBox(
                width: 7.0,
              ),
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
