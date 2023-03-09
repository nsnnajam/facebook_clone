// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfb/function/text.dart';

class HomeSecreen extends StatefulWidget {
  const HomeSecreen({Key? key}) : super(key: key);

  @override
  State<HomeSecreen> createState() => _HomeSecreenState();
}

class _HomeSecreenState extends State<HomeSecreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //info
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/237/200/300'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 207, 206, 206),
                    ),
                    child: Center(child: Text('Whats  on your mind?')),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.photo_album))
              ],
            ),
          ),
        ),
        //story
        Container(
          height: 190,
          child: Card(
              child: ListView.builder(
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 180,
                        width: 100,
                        child: Image.network(
                          'https://picsum.photos/200/300',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      child: Center(
                        child: mytxt(
                            "images", Colors.white, 22, FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
        ),

        //posts
        Container(
          child: Card(
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/picsum/200/300'),
                    ),
                    //title
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mytxt("imran Khan", Colors.black, 15, FontWeight.bold),
                        mytxt("20 min ago", Colors.blueGrey, 10,
                            FontWeight.normal),
                      ],
                    ),
                    SizedBox(
                      width: 110,
                    ),

                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),

                //row1

                mytxt("Imran khan speech today with reli", Colors.black, 12,
                    FontWeight.normal),
                Image.network(
                  'https://www.geo.tv/assets/uploads/updates/2023-03-08/474920_3468525_updates.jpg',
                ),
                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    ///three button for like msg &share
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //like button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.thumb_up_alt_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                      //2button msg
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.message_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                      //3button share
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.share_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //post2
        Container(
          child: Card(
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/picsum/200/300'),
                    ),
                    //title
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mytxt("imran Khan", Colors.black, 15, FontWeight.bold),
                        mytxt("20 min ago", Colors.blueGrey, 10,
                            FontWeight.normal),
                      ],
                    ),
                    SizedBox(
                      width: 110,
                    ),

                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),

                //row1

                mytxt("Imran khan speech today with reli", Colors.black, 12,
                    FontWeight.normal),
                Image.network(
                  'https://live-production.wcms.abc-cdn.net.au/5a0b2249c6021b5bbed0e3131ca323cf?impolicy=wcms_crop_resize&cropH=2235&cropW=3973&xPos=0&yPos=379&width=862&height=485',
                ),
                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    ///three button for like msg &share
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //like button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.thumb_up_alt_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                      //2button msg
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.message_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                      //3button share
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 207, 206, 206),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.share_outlined),
                              Text("30"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
