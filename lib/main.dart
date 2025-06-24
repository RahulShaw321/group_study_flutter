import 'package:flutter/material.dart';
import 'package:group_study_flutter/screens/home_screen.dart';
import 'package:group_study_flutter/styles/theme_style.dart';

void main() {
  runApp(const MyApp());
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
      home: const HomeScreen(),
    );
  }
}


