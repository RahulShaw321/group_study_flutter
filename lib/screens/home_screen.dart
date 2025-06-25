import 'package:flutter/material.dart';
import 'package:group_study_flutter/models/subject_model.dart';
import 'package:group_study_flutter/screens/group_details_screen.dart';
import 'package:group_study_flutter/widgets/group_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        elevation: 0,
        title: Text(
          "Group Study App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: Icon(Icons.menu_sharp),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: deviceSize.height,
        width: deviceSize.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 25),
              SizedBox(
                width: deviceSize.width * 0.9,
                height: deviceSize.height * 0.34,

                child: Card(
                  color: Theme.of(context).colorScheme.surface,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school_rounded, size: 80),
                      Text(
                        "Welcome to \n Group Study App!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Join your favorite study groups \n and connect with like-minded \n students.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: subjects
                    .map(
                      (subject) => GroupCard(
                        iconDirectory: subject.icon,
                        deviceSize: deviceSize,
                        subjectName: subject.name,
                        cardColor: subject.cardColor,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/group-detail',
                            arguments: {
                              'subjectName': subject.name,
                              'description':subject.description,
                              'cardColor': subject.cardColor,
                              'deviceSize' : deviceSize
                            },
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
