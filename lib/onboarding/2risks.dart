import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/3experience.dart';
import 'package:hackaithon/custom_toggle.dart';

class Risks extends StatefulWidget {
  final UserChoices userChoices;

  Risks({required this.userChoices});

  @override
  _RisksState createState() => _RisksState();
}

class _RisksState extends State<Risks> {
  int? _selectedRisk;

  @override
  void initState() {
    super.initState();
    _selectedRisk = widget.userChoices.investmentRisk;
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
            SizedBox(height: 24),
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
                'How you feel about investment risk and reward?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                CustomToggleButton(
                  text: 'Very Low Risk',
                  isSelected: _selectedRisk == 0,
                  onPressed: () {
                    setState(() {
                      _selectedRisk = 0;
                    });
                  },
                  value: 0,
                  groupValue: _selectedRisk ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: 'Low Risk',
                  isSelected: _selectedRisk == 1,
                  onPressed: () {
                    setState(() {
                      _selectedRisk = 1;
                    });
                  },
                  value: 1,
                  groupValue: _selectedRisk ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: 'Moderate Risk',
                  isSelected: _selectedRisk == 2,
                  onPressed: () {
                    setState(() {
                      _selectedRisk = 2;
                    });
                  },
                  value: 2,
                  groupValue: _selectedRisk ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: 'High Risk',
                  isSelected: _selectedRisk == 3,
                  onPressed: () {
                    setState(() {
                      _selectedRisk = 3;
                    });
                  },
                  value: 3,
                  groupValue: _selectedRisk ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: 'Very High Risk',
                  isSelected: _selectedRisk == 4,
                  onPressed: () {
                    setState(() {
                      _selectedRisk = 4;
                    });
                  },
                  value: 4,
                  groupValue: _selectedRisk ?? -1,
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
                    widget.userChoices.investmentRisk = _selectedRisk;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InvestmentExperiencePage(
                          userChoices: widget.userChoices,
                        ),
                      ),
                    );
                  },
                  isEnabled: _selectedRisk != null,
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
