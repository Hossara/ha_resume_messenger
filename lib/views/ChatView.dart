import 'package:flutter/material.dart';
import 'package:ha_resume_messenger/components/ContactCard.dart';
import 'package:ha_resume_messenger/models/Contact.dart';

class ChatView extends StatefulWidget
{
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView>
{

  List<Contact> _contacts = [
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Sahar", "Hallaji", "09928197949", "test_id", "hi"),
    Contact("Masood", "Maghsodi", "09928197949", "test_id", "hi"),
    Contact("Zohreh", "Koshki", "09928197949", "test_id", "hi"),
    Contact("Amirmohammad", "Golampoor", "09928197949", "test_id", "hi"),
    Contact("Niayesh", "Maleki", "09928197949", "test_id", "hi"),
    Contact("Benyamin", "Shakori", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Sahar", "Hallaji", "09928197949", "test_id", "hi"),
    Contact("Masood", "Maghsodi", "09928197949", "test_id", "hi"),
    Contact("Zohreh", "Koshki", "09928197949", "test_id", "hi"),
    Contact("Amirmohammad", "Golampoor", "09928197949", "test_id", "hi"),
    Contact("Niayesh", "Maleki", "09928197949", "test_id", "hi"),
    Contact("Benyamin", "Shakori", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Sahar", "Hallaji", "09928197949", "test_id", "hi"),
    Contact("Masood", "Maghsodi", "09928197949", "test_id", "hi"),
    Contact("Zohreh", "Koshki", "09928197949", "test_id", "hi"),
    Contact("Amirmohammad", "Golampoor", "09928197949", "test_id", "hi"),
    Contact("Niayesh", "Maleki", "09928197949", "test_id", "hi"),
    Contact("Benyamin", "Shakori", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
    Contact("Sahar", "Hallaji", "09928197949", "test_id", "hi"),
    Contact("Masood", "Maghsodi", "09928197949", "test_id", "hi"),
    Contact("Zohreh", "Koshki", "09928197949", "test_id", "hi"),
    Contact("Amirmohammad", "Golampoor", "09928197949", "test_id", "hi"),
    Contact("Niayesh", "Maleki", "09928197949", "test_id", "hi"),
    Contact("Benyamin", "Shakori", "09928197949", "test_id", "hi"),
    Contact("Hossein", "Araghi", "09928197949", "test_id", "hi"),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 138,
      child: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) =>
            ContactCard(
              firstname: _contacts[index].firstname,
              lastname: _contacts[index].lastname,
              phone: _contacts[index].phone,
              id: _contacts[index].id,
              lastMsg: _contacts[index].lastMsg
            ),
      )
    );
  }
}