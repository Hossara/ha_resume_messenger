import 'package:flutter/material.dart';

class CallsView extends StatefulWidget
{
  const CallsView({Key? key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Text("Calls"),
    );
  }
}
