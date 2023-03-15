// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:myfb/Secreen/HomeSecreen.dart';
import 'package:myfb/Secreen/Login/signin.dart';
import 'package:myfb/Secreen/Login/userdetail.dart';
import 'package:myfb/Secreen/friendReq.dart';
import 'package:myfb/Secreen/messages.dart';
import 'package:myfb/function/text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabbarSecreenSecreen extends StatefulWidget {
  const TabbarSecreenSecreen({Key? key}) : super(key: key);

  @override
  State<TabbarSecreenSecreen> createState() => _TabbarSecreenSecreenState();
}

class _TabbarSecreenSecreenState extends State<TabbarSecreenSecreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                shadows: [Shadow(color: Colors.grey)],
              )),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Alert!!"),
                      content: Text("You are sure!"),
                      actions: <Widget>[
                        ElevatedButton(
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool('isLoggedIn', false);
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Userlogin()),
                              );
                            },
                            child: const Text("log out"))
                      ],
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                shadows: [Shadow(color: Colors.black, offset: Offset.infinite)],
              )),
        ],
        backgroundColor: Colors.white,
        title: mytxt("facebook", Colors.blue, 20, FontWeight.bold),
        bottom: TabBar(
          labelColor: Colors.blue, //<-- selected text color
          unselectedLabelColor: const Color.fromARGB(255, 48, 48, 48),

          controller: tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.home_outlined)),
            Tab(
              icon: Icon(Icons.people_outlined),
            ),
            Tab(
              icon: Icon(Icons.message_outlined),
            ),
            Tab(
              icon: Icon(Icons.notifications_outlined),
            ),
            Tab(
              icon: Icon(Icons.video_collection_outlined),
            ),
            Tab(
              icon: Icon(Icons.flag_outlined),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          HomeSecreen(),
          FriendRequest(),
          MessagesSecreen(),
          UserDetail(),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
