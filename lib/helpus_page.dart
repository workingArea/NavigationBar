import 'package:flutter/material.dart';

class HelpUsPage extends StatefulWidget {
  const HelpUsPage({Key? key}) : super(key: key);

  @override
  State<HelpUsPage> createState() => _HelpUsPageState();
}

class _HelpUsPageState extends State<HelpUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HelpUs Page"),
      ),
      backgroundColor: Colors.red,
    );
  }
}
