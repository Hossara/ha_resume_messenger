import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {

  final String firstname;
  final String lastname;
  final String phone;
  final String id;
  final String lastMsg;

  const ChatPage({Key? key, required this.firstname, required this.lastname, required this.phone, required this.id, required this.lastMsg}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303030),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: IconButton(
                          onPressed: ()
                          {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            size: 30,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 30,
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/avatar.png"),
                          radius: 30,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.firstname} ${widget.lastname}",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 1.3
                              ),
                            ),

                            Text(
                              "online",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.white54,
                                fontSize: 10,
                                height: 1.3
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
