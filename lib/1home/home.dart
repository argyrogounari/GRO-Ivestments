import 'package:flutter/material.dart';
import 'package:hackaithon/reaordable_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Start onboarding'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReorderableListPage()),
            );
          },
        ),
      ),
    );
  }
}
