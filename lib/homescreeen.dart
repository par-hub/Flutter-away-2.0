import 'package:flutter/material.dart';
import 'package:formula_app/subject_card.dart';

class Homescreeen extends StatelessWidget {
  const Homescreeen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> subjects = [
      {'title': 'Engineering Calculus', 'icon': 'assets/calculas.png'},
      {'title': 'Discrete Mathematics', 'icon': 'assets/Discreate.png'},
      {
        'title': 'Electrical and Electronics Engineering',
        'icon': 'assets/Electronics.png',
      },
      {'title': 'Engineering Mechanics', 'icon': 'assets/Mechanics.png'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xff29133f),
      body: SafeArea(
        // tells the app to avoid system UI overlaps
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0), // padding around the header
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MOBILON NOTES",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Get notes for all subjects in one place",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/Mobilon-removebg-preview (1) 2.png",
                    height: 40,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Expanded(
              // makes the ListView take up remaining space
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ), // horizontal padding
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SubjectCard(
                      title: subject['title']!,
                      iconPath: subject['icon']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
