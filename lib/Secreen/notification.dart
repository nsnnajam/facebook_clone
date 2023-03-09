import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationSecren extends StatefulWidget {
  const NotificationSecren({super.key});

  @override
  State<NotificationSecren> createState() => _NotificationSecrenState();
}

class _NotificationSecrenState extends State<NotificationSecren> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Text("data"),
    );
  }
}
