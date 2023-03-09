// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myfb/function/text.dart';

class FriendRequest extends StatefulWidget {
  const FriendRequest({super.key});

  @override
  State<FriendRequest> createState() => _FriendRequestState();
}

class _FriendRequestState extends State<FriendRequest> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mytxt("Friends", Colors.black, 25, FontWeight.bold),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 207, 206, 206),
                      ),
                      child: Center(
                        child: mytxt(
                            "Suggestions", Colors.black, 14, FontWeight.bold),
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 207, 206, 206),
                      ),
                      child: Center(
                        child: mytxt(
                            "Your Friends", Colors.black, 14, FontWeight.bold),
                      )),
                ),
              ],
            ),
            mytxt("Friend Request", Colors.black, 16, FontWeight.bold),

            Divider(),
            //freind req post
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        maxRadius: 45,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/seed/picsum/200/300'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mytxt("Najam ur rehman", Colors.black, 18,
                                  FontWeight.w800),
                              SizedBox(
                                width: 30,
                              ),
                              Text("2w")
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 10,
                                backgroundImage: NetworkImage(
                                    'https://picsum.photos/seed/picsum/200/300'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4 matual friends",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(30, 35),
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Confrim",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(35, 35),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ]),
    );
  }
}
