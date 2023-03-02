import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scoreboard extends StatelessWidget {
  final int totalProblems;
  final int totalProblemsSolved;
  const Scoreboard({super.key, required this.totalProblems, required this.totalProblemsSolved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Placar Reclamei",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
