import 'package:flutter/material.dart';
import 'package:group_study_flutter/styles/theme_style.dart';

class GroupDetailScreen extends StatelessWidget {
  final String subjectName;
  final String description;
  final Color cardColor;
  final deviceSize;

  const GroupDetailScreen({
    super.key,
    required this.subjectName,
    required this.description,
    required this.cardColor, this.deviceSize,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(subjectName),
        centerTitle: true,
        backgroundColor: cardColor,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              cardColor.withOpacity(0.1),
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subjectName,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: cardColor.darken(),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 18, height: 1.4),
            ),
            const SizedBox(height: 30),
            const Text(
              "Resources:",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ...[
              "📘 Chapter Notes",
              "💬 Group Chat",
              "🖋️📜 Text-to-Speech        "
            ].map((item) => ListTile(
                  leading: const Icon(Icons.check_circle_outline),
                  title: Text(item),
                )),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Join logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: cardColor,
                  foregroundColor: pastelColorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                
                icon: const Icon(Icons.group_add_rounded),
                label: const Text(
                  "Join Group",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
