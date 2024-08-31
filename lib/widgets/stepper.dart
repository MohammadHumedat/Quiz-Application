import 'package:flutter/material.dart';

class stepperWidget extends StatelessWidget {
  const stepperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentStep = 0;

    return Center(
      child: Stepper(
        steps: [
          Step(
              title: const Text('Step1'),
              content: const Text('This is step 1.'),
              isActive: _currentStep == 0),
        ],
      ),
    );
  }
}
