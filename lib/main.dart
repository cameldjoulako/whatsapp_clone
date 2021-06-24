import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = const Color(0x25D366);
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.grey[800],
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
        backgroundColor: backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
          size: 20,
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuSection(),
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  final messages;
  MessageSection({this.messages});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = [""];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for (var item in menuItems)
            Text(
              item,
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }
}
