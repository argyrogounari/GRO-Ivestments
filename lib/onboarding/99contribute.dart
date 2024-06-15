import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/main.dart';

class ContributePage extends StatelessWidget {
  final UserChoices userChoices;

  ContributePage({required this.userChoices});

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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationBarApp(),
                      ),
                      (Route<dynamic> route) =>
                          false, // Removes all previous routes
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Contribute to causes',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.grey[300],
              // You can add an image here by replacing this Container with an Image widget
            ),
            SizedBox(height: 20),
            Text(
              'Your Choices:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Investment Risk: ${getRiskLabel(userChoices.investmentRisk)}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Investment Experience: ${getExperienceLabel(userChoices.investmentExperience)}',
              style: TextStyle(
                fontSize: 18,
              ),
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationBarApp(),
                    ),
                  );
                },
                child: Text(
                  "Finish",
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

  String getRiskLabel(int? risk) {
    switch (risk) {
      case 0:
        return 'Very Low Risk';
      case 1:
        return 'Low Risk';
      case 2:
        return 'Moderate Risk';
      case 3:
        return 'High Risk';
      case 4:
        return 'Very High Risk';
      default:
        return 'Unknown';
    }
  }

  String getExperienceLabel(int? experience) {
    switch (experience) {
      case 0:
        return 'Less than 1 year';
      case 1:
        return '1 - 3 years';
      case 2:
        return 'More than 3 years';
      default:
        return 'Unknown';
    }
  }
}
