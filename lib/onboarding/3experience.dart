import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/4how_much_invest.dart';
import 'package:hackaithon/custom_toggle.dart';

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
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.05,
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
                color: Color(0xFF46A771),
                fontSize: 12,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Text(
                'How experienced are you when it comes to investing?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                CustomToggleButton(
                  text: 'Less than 1 year',
                  isSelected: _selectedExperience == 0,
                  onPressed: () {
                    setState(() {
                      _selectedExperience = 0;
                    });
                  },
                  value: 0,
                  groupValue: _selectedExperience ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: '1 - 3 years',
                  isSelected: _selectedExperience == 1,
                  onPressed: () {
                    setState(() {
                      _selectedExperience = 1;
                    });
                  },
                  value: 1,
                  groupValue: _selectedExperience ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: 'More than 3 years',
                  isSelected: _selectedExperience == 2,
                  onPressed: () {
                    setState(() {
                      _selectedExperience = 2;
                    });
                  },
                  value: 2,
                  groupValue: _selectedExperience ?? -1,
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: "Next",
                  onPressed: () {
                    widget.userChoices.investmentExperience =
                        _selectedExperience;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InvestmentAmountPage(
                          userChoices: widget.userChoices,
                        ),
                      ),
                    );
                  },
                  isEnabled: _selectedExperience != null,
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
