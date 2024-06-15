import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/99contribute.dart';

class InvestmentExperiencePage extends StatefulWidget {
  final UserChoices userChoices;

  InvestmentExperiencePage({required this.userChoices});

  @override
  _InvestmentExperiencePageState createState() =>
      _InvestmentExperiencePageState();
}

class _InvestmentExperiencePageState extends State<InvestmentExperiencePage> {
  int? _selectedExperience;

  @override
  void initState() {
    super.initState();
    _selectedExperience = widget.userChoices.investmentExperience;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'ROBO INVESTOR',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Handle close button press
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'INVESTMENT GOALS',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'How experienced are you\nwhen it comes to investing?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                RadioListTile<int>(
                  title: Text('Less than 1 year'),
                  value: 0,
                  groupValue: _selectedExperience,
                  onChanged: (value) {
                    setState(() {
                      _selectedExperience = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('1 - 3 years'),
                  value: 1,
                  groupValue: _selectedExperience,
                  onChanged: (value) {
                    setState(() {
                      _selectedExperience = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('More than 3 years'),
                  value: 2,
                  groupValue: _selectedExperience,
                  onChanged: (value) {
                    setState(() {
                      _selectedExperience = value;
                    });
                  },
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  widget.userChoices.investmentExperience = _selectedExperience;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ContributePage(userChoices: widget.userChoices)),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
