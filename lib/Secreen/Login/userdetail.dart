// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myfb/provider/fbprovider.dart';
import 'package:provider/provider.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyProviderfb>(context, listen: false);
    return Column(
      children: [
        Text("data"),
        Expanded(
          child: Consumer<MyProviderfb>(
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: value.fbsusers.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(value.fbsusers[index].name),
                        subtitle: Text(value.fbsusers[index].email),
                        leading: Text(value.fbsusers[index].phone.toString()),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
