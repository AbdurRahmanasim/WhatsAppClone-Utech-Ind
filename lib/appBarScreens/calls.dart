import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Create call Link",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Share a link for your WhatsApp Call",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Recent",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          calllist("Makshoof", "March 31, 8:10PM", true),
          calllist("Eshaal", "yesterday 10:10 PM", false),
          calllist("Eshaal", "yesterday 10:10 PM", false),
          calllist("Eshaal", "yesterday 10:10 PM", true),
          calllist("Eshaal", "yesterday 10:10 PM", true),
          calllist("Eshaal", "yesterday 10:10 PM", false),
          calllist("Eshaal", "yesterday 10:10 PM", true),
        ],
      )),
    );
  }

  Widget calllist(String name, String text, bool call) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text(
        name,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          call
              ? const Icon(
                  Icons.call_made,
                  size: 12,
                  color: Colors.green,
                )
              : const Icon(
                  Icons.call_received,
                  size: 12,
                  color: Colors.red,
                ),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}
