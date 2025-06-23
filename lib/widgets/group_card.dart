import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String iconDirectory;
  final String subjectName;
  final Color cardColor;
  final Function onTap;
  const GroupCard({
    super.key,
    required this.iconDirectory,
    required this.subjectName,
    required this.onTap,
    required this.cardColor,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 150.0,
        width: 360,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [cardColor.withAlpha(180), Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 30),
                Image.asset(iconDirectory, scale: 6,colorBlendMode: BlendMode.colorDodge,),
                SizedBox(width: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),

                    Text(
                      subjectName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Tap to join"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
