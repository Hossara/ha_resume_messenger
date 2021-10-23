import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ha_resume_messenger/pages/ChatPage.dart';
import 'package:ha_resume_messenger/views/ChatView.dart';

class ContactCard extends StatefulWidget
{
  final String firstname;
  final String lastname;
  final String phone;
  final String id;
  final String lastMsg;

  const ContactCard({Key? key, required this.firstname, required this.lastname, required this.phone, required this.id, required this.lastMsg}) : super(key: key);

  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard>
{

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            ChatPage(
              firstname: widget.firstname,
              lastname: widget.lastname,
              phone: widget.phone,
              id: widget.id,
              lastMsg: widget.lastMsg
            )
        ));
      },
      style: ButtonStyle(padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero)),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/img/avatar.png"),
                    radius: 30,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.firstname} ${widget.lastname}",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        widget.lastMsg,
                        style: GoogleFonts.nunitoSans(
                          color: Colors.white54,
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "19:32",
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white54,
                      fontSize: 10
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
