import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();

}

class _FirstScreenState extends State<FirstScreen> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(20),
            child: TextField(
              controller: textEditingController,
            ),
            ),
            ElevatedButton(
                onPressed: () {
                  String text = textEditingController.text;
                  Navigator.pop(context,
                     MaterialPageRoute(builder: (context) => SecondScreen(text: text)));
                },
              child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
