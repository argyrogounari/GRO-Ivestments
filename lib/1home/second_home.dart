import 'package:flutter/material.dart';
import 'package:hackaithon/onboarding/1geting_started.dart';

class SecondHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SECOOND Home Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Start onboarding'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Onboarding()),
            );
          },
        ),
      ),
    );
  }
}
