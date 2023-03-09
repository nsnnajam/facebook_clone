// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessagesSecreen extends StatefulWidget {
  const MessagesSecreen({super.key});

  @override
  State<MessagesSecreen> createState() => _MessagesSecreenState();
}

class _MessagesSecreenState extends State<MessagesSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
                shadows: [Shadow(color: Colors.grey)],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
                shadows: [Shadow(color: Colors.black, offset: Offset.infinite)],
              )),
        ],
        title: Text("Messages"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/seed/picsum/200/300'),
                        ),
                        Center(
                          child: Text("najam"),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            //messeges
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    hoverColor: Colors.grey,
                    leading: CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/picsum/200/300'),
                    ),
                    title: Text("najam ur rehman"),
                    subtitle: Text("who are u when you come here"),
                    trailing: CircleAvatar(
                      maxRadius: 8,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/picsum/200/300'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
