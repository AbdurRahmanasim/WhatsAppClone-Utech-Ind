import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Status",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          statuslist("My Status", "6 minutes ago"),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          statuslist("Kamran", "57 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
          statuslist("Eshaal", "10 minutes ago"),
        ],
      )),
    );
  }

  Widget statuslist(
    String name,
    String text,
  ) {
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
    );
  }
}
