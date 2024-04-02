import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          newcommunity(
            "New Community",
          ),
          const Divider(
            color: Color.fromARGB(255, 232, 232, 232),
            thickness: 4,
          ),
          communitylist2("Utech Batch 02"),
          communitylist1(
              "Utech Online Classes", "uzair joined from the campus group"),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
          communitylist1("Class Group", "ahmed joined from the .........."),
        ],
      )),
    );
  }

  Widget communitylist1(
    String name,
    String text,
  ) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(249, 104, 220, 83),
        ),
        height: 40,
        width: 40,
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget communitylist2(
    String name,
  ) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(250, 248, 233, 233),
        ),
        height: 40,
        width: 40,
        child: const Icon(
          Icons.people,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget newcommunity(
    String name,
  ) {
    return ListTile(
      leading: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(249, 194, 181, 181),
          ),
          height: 40,
          width: 40,
          child: const Icon(
            Icons.people,
            color: Colors.white,
          ),
        ),
        const Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
                child: Icon(
                  Icons.add,
                  size: 7,
                  color: Colors.white,
                )))
      ]),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
