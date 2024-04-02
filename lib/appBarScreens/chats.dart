import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        chatlist("Ali", "hello", "10:45 am", "6"),
        chatlist("Ahmed", "bye", "11:39 pm", "8"),
        chatlist("Makshoof", "ok", "12:45 am", "9"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
        chatlist("Eshaal", "class time", "09:05 am", "3"),
      ],
    )));
  }

  Widget chatlist(String name, String text, String time, String unreadMsg) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
            child: Center(
                child: Text(
              unreadMsg,
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
