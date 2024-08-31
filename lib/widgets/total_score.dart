import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int totalscore;
  final VoidCallback resetQuisApp;
  const TotalScorePart({
    super.key,
    required this.totalscore,
    required this.resetQuisApp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Congratulations',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(' The Total score= $totalscore'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            style: TextButton.styleFrom(
              shadowColor: Colors.grey,
            ),
            onPressed: resetQuisApp,
            child: const Text('Reset Quis',
                style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 69, 147, 211))),
          ),
        ),
      ],
    );
  }
}
