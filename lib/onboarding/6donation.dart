import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/custom_toggle.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/99contribute.dart';

class DonationPage extends StatefulWidget {
  final UserChoices userChoices;

  DonationPage({required this.userChoices});

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  bool? _donate; // Tracks whether user has chosen to donate
  double _donationPercentage = 5;

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
            SizedBox(
              width: 157,
              height: 14,
              child: Text(
                'SUSTAINABILITY VALUES',
                style: TextStyle(
                  color: Color(0xFF46A771),
                  fontSize: 12,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: -0.05,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Text(
                'Would you like to donate and help causes you believe in?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 7),
            Text(
              'P.S. You can save on taxes as well!',
              style: TextStyle(
                color: Color(0xFF636363),
                fontSize: 12,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(height: 53),
            Row(
              children: [
                Expanded(
                  child: CustomToggleButton(
                    text: 'Yes',
                    isSelected: _donate == true,
                    onPressed: () {
                      setState(() {
                        _donate = true;
                      });
                    },
                    value: 1,
                    groupValue: _donate == true ? 1 : 0,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomToggleButton(
                    text: 'No',
                    isSelected: _donate == false,
                    onPressed: () {
                      setState(() {
                        _donate = false;
                      });
                    },
                    value: 0,
                    groupValue: _donate == false ? 0 : 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 46),
            if (_donate == true)
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Slider(
                        value: _donationPercentage,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        label: '${_donationPercentage.round()}%',
                        onChanged: (value) {
                          setState(() {
                            _donationPercentage = value;
                          });
                        },
                        activeColor: Color(0xFF46A771),
                        inactiveColor: Colors.green[100],
                      ),
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${_donationPercentage.round()}% of my profits should be donated to\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.05,
                          ),
                        ),
                        TextSpan(
                          text: 'sustainability driven organizations',
                          style: TextStyle(
                            color: Color(0xFF46A771),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(
                                0xFF46A771), // Set underline color to green
                            height: 0,
                            letterSpacing: -0.05,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
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
                    widget.userChoices.donationPercentage =
                        _donate == true ? _donationPercentage : null;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ContributePage(userChoices: widget.userChoices),
                      ),
                    );
                  },
                  isEnabled: true,
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
