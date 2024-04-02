import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  late String name;
  ChatScreen({required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List messages = [
    {"sender": "User", "message": "Hello How are you", "time": "10:45"},
    {"sender": "You", "message": "Hi", "time": "10:45"},
    {
      "sender": "You",
      "message": "Where are you, When will you come",
      "time": "10:45"
    },
    {"sender": "User", "message": "Join class now", "time": "10:45"},
    {"sender": "You", "message": "Bye", "time": "10:45"},
    {"sender": "User", "message": "Bye", "time": "10:45"},
  ];

  TextEditingController chatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_camera_back,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.white,
              )),
          PopupMenuButton(
            child: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            color: Colors.white,
            onSelected: (value) {
              // your logic
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  child: Text("View Contact"),
                  value: '/hello',
                ),
                PopupMenuItem(
                  child: Text("Media, links, and docs"),
                  value: '/about',
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: '/contact',
                ),
                PopupMenuItem(
                  child: Text("Mute notifications"),
                  value: '/contact',
                ),
                PopupMenuItem(
                  child: Text("Disappearing messages"),
                  value: '/contact',
                ),
                PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: '/contact',
                ),
                PopupMenuItem(
                  child: Text("More"),
                  value: '/contact',
                )
              ];
            },
          )
        ],
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 19, 116, 55),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  // backgroundImage: AssetImage("img/logoo.png"),
                  backgroundColor: Colors.black,
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Online",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                // IconButton(
                //   onPressed: () {
                //     NotificationServices()
                //         .sendNotification("Abdur", "New Event Created");
                //   },
                //   icon: Icon(
                //     Icons.call,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    // alignment: Alignment.topLeft,
                    alignment: (messages[index]["sender"] == "You"
                        ? Alignment.topRight
                        : Alignment.topLeft),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: messages[index]["sender"] == "You"
                              ? Radius.circular(20)
                              : Radius.circular(0),
                          bottomRight: messages[index]["sender"] == "You"
                              ? Radius.circular(0)
                              : Radius.circular(20),
                        ),
                        color: (messages[index]["sender"] == "You"
                            ? const Color.fromARGB(255, 114, 223, 117)
                            : Color.fromARGB(255, 216, 197, 197)),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            messages[index]["message"],
                            style: GoogleFonts.alike(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          messages[index]["sender"] == "You"
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: BorderSide.strokeAlignCenter),
                                      child: Text(
                                        messages[index]["time"],
                                        style: const TextStyle(
                                            fontSize: 6, color: Colors.black),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.done_all,
                                      size: 10,
                                      color: Color.fromARGB(255, 27, 151, 253),
                                    )
                                  ],
                                )
                              : const SizedBox(
                                  width: 1,
                                ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: 50,
              margin: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 18, 128, 51),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 12.0),
                    child: Transform.rotate(
                        angle: 45,
                        child: const Icon(
                          Icons.attach_file_sharp,
                          color: Colors.white,
                        )),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: chatController,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 6,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 11.0),
                    child: Transform.rotate(
                      angle: -3.14 / 5,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: GestureDetector(
                          onTap: () async {},
                          onLongPress: () {
                            setState(() {
                              // messageList.add(
                              //     MessageData(textEditingController.text, false));
                              // textEditingController.clear();
                              // scrollAnimation();
                            });
                          },
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
