import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/2risks.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  // Handle close button press
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'ROBO INVESTOR',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'We make investments\naligned with your values',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 390,
              height: 265,
              child: Image.asset(
                'assets/images/onboarding_start.png',
                fit: BoxFit.contain,
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: "Let's Begin",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Risks(
                            userChoices: UserChoices(),
                          ),
                        ),
                      );
                    },
                    isEnabled: true,
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
