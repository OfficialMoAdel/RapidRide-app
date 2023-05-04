import 'package:flutter/material.dart';
import 'CallsScreen.dart';
import 'ChatScreen.dart';
import '../../constants.dart';

class InboxPage extends StatefulWidget {
  static String id = 'InboxPage';
  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Inbox',
            style: TextStyle(
                color: ktherdColor, fontWeight: FontWeight.w500, fontSize: 21),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: ktherdColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: ktherdColor,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 22),
            labelPadding: EdgeInsets.symmetric(horizontal: 22),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            indicatorColor: Colors.amber,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              ChatScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
