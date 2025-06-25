import 'package:flutter/material.dart';
import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';
import 'package:group_study_flutter/styles/theme_style.dart';

class GroupChatScreen extends StatefulWidget {
  final String guid;
  final String groupName;
  final Color cardColor;

  const GroupChatScreen({
    super.key,
    required this.guid,
    required this.groupName,
    required this.cardColor,
  });

  @override
  State<GroupChatScreen> createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  bool isJoined = false;

  @override
  void initState() {
    super.initState();
    _joinGroup();
  }

  void _joinGroup() async {
    try {
      Group? group = await CometChat.joinGroup(
        widget.guid,
        'public',
        onSuccess: (Group group) {},
        onError: (CometChatException excep) {},
      );
      print("✅ Joined group: ${group?.name}");
      setState(() {
        isJoined = true;
      });
    } catch (e) {
      print("❌ Failed to join group: $e");
      // Still show chat if already a member
      Group? group = await CometChat.getGroup(
        widget.guid,
        onSuccess: (Group retGrou) {},
        onError: (CometChatException excep) {},
      );
      if (group != null) {
        setState(() {
          isJoined = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isJoined) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.groupName),
        backgroundColor: widget.cardColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: CometChatMessageList(
              style: CometChatMessageListStyle(backgroundColor: widget.cardColor.withAlpha(80)),
              group: Group(
                guid: widget.guid,
                name: widget.groupName,
                type: 'public',
              ),
            ),
          ),
          CometChatMessageComposer(

            group: Group(
              guid: widget.guid,
                name: widget.groupName,
                type: 'public',
            ),
          ),
        ],
      ),
    );
  }
}
