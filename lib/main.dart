import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:group_study_flutter/screens/group_chat_screen.dart';
import 'package:group_study_flutter/screens/group_details_screen.dart';
import 'package:group_study_flutter/screens/home_screen.dart';
import 'package:group_study_flutter/screens/login_screen.dart';
import 'package:group_study_flutter/screens/user_register_screen.dart';
import 'package:group_study_flutter/styles/theme_style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await CometChatUIKit.init(
    uiKitSettings:
        (UIKitSettingsBuilder()
              ..subscriptionType = CometChatSubscriptionType.allUsers
              ..region = "IN"
              ..autoEstablishSocketConnection = true
              ..appId = "277696ff6ff1f01f"
              ..authKey = "f348122de999ae463c1e04bd2e0e6bc43cfc53bb"
              ..extensions = CometChatUIKitChatExtensions.getDefaultExtensions()
              ..aiFeature = CometChatUIKitChatAIFeatures.getDefaultAiFeatures())
            .build(),
  );
  await CometChatUIKit.login("cometchat-uid-1");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: pastelColorScheme,
        scaffoldBackgroundColor: pastelColorScheme.onPrimary,
        appBarTheme: AppBarTheme(
          backgroundColor: pastelColorScheme.primary,
          foregroundColor: pastelColorScheme.onPrimary,
        ),
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF303030)),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/group-detail':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (context) => GroupDetailScreen(
                subjectName: args['subjectName'],
                description: args['description'],
                cardColor: args['cardColor'],
              ),
            );
          case '/group-chat-screen':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (context) => GroupChatScreen(
                guid: args['guid'],
                groupName: args['groupName'],
                cardColor: args['cardColor'],
              ),
            );
          case '/register-user-screen':
            return MaterialPageRoute(
              builder: (context) => UserRegisterScreen(),
            );
          default:
            return MaterialPageRoute(builder: (context) => const LoginScreen());
        }
      },
    );
  }
}
