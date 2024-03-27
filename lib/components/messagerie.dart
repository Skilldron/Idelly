import 'package:flutter/material.dart';

class MessageriePage extends StatefulWidget {
  @override
  _MessageriePageState createState() => _MessageriePageState();
}

class _MessageriePageState extends State<MessageriePage> {
  List<String> messages = [];

  TextEditingController messageController = TextEditingController();

  void sendMessage() {
    setState(() {
      String message = messageController.text;
      messages.add(message);
      messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Votre message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}