import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

//---------------------------------------------------------------------------------------
//--------Déclaration des couleurs principale du design de notre application ------------
//---------------------------------------------------------------------------------------
const primaryColor = Color.fromRGBO(39, 193, 169, 1.0);
const conversationColor = Color.fromRGBO(239, 255, 252, 1.0);
const backgroundColor = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Redesign',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        backgroundColor: backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 20,
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuSection(),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  height: 695,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: FavoriteSection(),
                ),
                Positioned(
                  top: 184,
                  child: MessagesSection(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------
//--------Onglet de la page d'accueil -------------
//-----------------------------------------------------------
class MenuSection extends StatelessWidget {
  final List menuItems = ["Message", "Online", "Groups", "Calls"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var item in menuItems)
                Container(
                  margin: EdgeInsets.only(right: 55),
                  child: Text(
                    item,
                    style: GoogleFonts.inter(
                      color: Colors.white60,
                      fontSize: 29,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------
//--------Widget de definition des contacts favoris-------------
//-----------------------------------------------------------
class FavoriteSection extends StatelessWidget {
  final List favoriteContacts = [
    {
      'name': 'Alla',
      'profile': 'images/avatar/a1.jpg',
    },
    {
      'name': 'July',
      'profile': 'images/avatar/a2.jpg',
    },
    {
      'name': 'Mikle',
      'profile': 'images/avatar/a3.jpg',
    },
    {
      'name': 'Kler',
      'profile': 'images/avatar/a4.jpg',
    },
    {
      'name': 'Morelle',
      'profile': 'images/avatar/a5.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Favorite contacts",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 20,
              ),
              onPressed: null,
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: favoriteContacts.map((favorite) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16, bottom: 6),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        favorite['profile'],
                      ),
                    ),
                    padding: EdgeInsets.all(4),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    favorite['name'],
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//-----------------------------------------------------------
//-------- Widget listant les messages reçus-----------------
//-----------------------------------------------------------
class MessagesSection extends StatelessWidget {
  final List messages = [
    {
      'senderProfile': 'images/avatar/a2.jpg',
      'senderName': 'Lara',
      'message': 'Hello! how are you',
      'unRead': 0,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a3.jpg',
      'senderName': 'Kolya',
      'message': 'Will you visit me',
      'unRead': 2,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a4.jpg',
      'senderName': 'Mary',
      'message': 'I ate your mom',
      'unRead': 6,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a5.jpg',
      'senderName': 'Louren',
      'message': 'Are you with Kolya again?',
      'unRead': 0,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Helen',
      'message': 'Borrow money please',
      'unRead': 3,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '16:35',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 10, top: 15),
      height: 650,
      width: 450,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: messages.map((message) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 23),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(message['senderProfile']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  message['senderName'],
                                  style: GoogleFonts.inter(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Wrap(children: [
                                  Text(
                                    message['message'],
                                    style: GoogleFonts.inter(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(message['date']),
                                  message['unRead'] != 0
                                      ? Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            message['unRead'].toString(),
                                            style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Colors.grey[400],
                        width: 264,
                        height: 0.5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 86,
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
