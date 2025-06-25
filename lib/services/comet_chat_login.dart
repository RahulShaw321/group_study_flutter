import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';

Future<void> loginToCometChat(String uid, String name) async {
  // Create user in CometChat (only once)
  final cometUser = User(uid: uid, name: name);

  await CometChatUIKit.createUser(
    cometUser,
    onSuccess: (user) => print("🟢 CometChat user created."),
    onError: (e) => print("ℹ️ CometChat user might already exist: $e"),
    // from CometChat dashboard
  );

  // Login to CometChat
  await CometChatUIKit.login(uid);

  print("✅ Logged into CometChat as $uid");
}
