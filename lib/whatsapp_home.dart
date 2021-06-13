import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chats_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Icon(Icons.more_vert)
        ],
        title: const Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            const Tab(text: "CHATS"),
            const Tab(
              text: "STATUS",
            ),
            const Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: const [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("open chat");
        },
        backgroundColor: Theme.of(context).accentColor,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
