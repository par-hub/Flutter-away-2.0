import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:formula_app/calculas_formula.dart';
import 'package:formula_app/electronics_formula.dart';

class SubjectCard extends StatelessWidget {
  final String title;
  final String iconPath;

  const SubjectCard({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      // outer container for layout
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        // to apply border radius to child widgets
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          // applies a blur effect to the background
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // blur intensity
          child: Container(
            // inner container with styling
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1), //  semi-transparent bg
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withOpacity(0.2), // border color
                width: 1,
              ),
            ),
            child: InkWell(
              onTap: () {
                title == 'Engineering Calculus'
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CalculasFormula(),
                        ),
                      )
                    : title == 'Electrical and Electronics Engineering'
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ElectronicsFormula(),
                        ),
                      )
                    : null;
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(iconPath, height: 60, color: Colors.white),
                    const SizedBox(height: 12),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
