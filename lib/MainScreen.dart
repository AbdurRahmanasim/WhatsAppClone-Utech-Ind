import 'package:class01/appBarScreens/calls.dart';
import 'package:class01/appBarScreens/community.dart';
import 'package:class01/appBarScreens/chats.dart';
import 'package:class01/appBarScreens/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:whatsappclone/pages/call_view.dart';
// import 'package:whatsappclone/pages/camera_view.dart';
// import 'package:whatsappclone/pages/chat_view.dart';
// import 'package:whatsappclone/pages/status_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(
        icon: Icon(
      Icons.people,
      color: Colors.white,
    )),
    const Tab(
      child: Text(
        "CHATS",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Tab(
      child: Text(
        "STATUS",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Tab(
      child: Text(
        "CALLS",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 19, 116, 55),
          actions: [
            IconButton(
                onPressed: () {
                  print("Search");
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            // IconButton(
            //     onPressed: () {
            //       print("three dot");
            //     },
            //     icon: Icon(
            //       Icons.more_vert,
            //       color: Colors.white,
            //     )),
            PopupMenuButton(
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              color: Colors.white,
              onSelected: (value) {
                // your logic
              },
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(
                    child: Text("New Group"),
                    value: '/hello',
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast"),
                    value: '/about',
                  ),
                  PopupMenuItem(
                    child: Text("Linked Devices"),
                    value: '/contact',
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                    value: '/contact',
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                    value: '/contact',
                  )
                ];
              },
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Community(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
