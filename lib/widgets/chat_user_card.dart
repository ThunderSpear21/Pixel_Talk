import 'package:flutter/material.dart';
import 'package:lets_chat/models/chat_user.dart';

class ChatUserCard extends StatefulWidget {
  final ChatUser user;
  const ChatUserCard({super.key, required this.user});

  @override
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  @override
  Widget build(BuildContext context) {
    //final mq = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.symmetric(vertical: 0.8, horizontal: 0),
      color: Colors.blue.shade100,
      elevation: 0.8,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue.shade300,
        highlightColor: Colors.blue.shade300,
        child: ListTile(
          leading: const CircleAvatar(),
          title: Text(
            widget.user.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            widget.user.about,
            maxLines: 1,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Text('21:12'),
        ),
      ),
    );
  }
}
