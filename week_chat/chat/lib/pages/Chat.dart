import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  void initState() {
    getToken();
    super.initState();
  }

  void getToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    print(fcmToken);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Chat'),
      ),
    );
  }
}
