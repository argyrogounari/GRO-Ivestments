import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/6donation.dart';

class SDGGoal {
  final int number;
  final String description;

  SDGGoal({required this.number, required this.description});
}

class GoalsSelectionPage extends StatefulWidget {
  final UserChoices userChoices;

  GoalsSelectionPage({required this.userChoices});

  @override
  _GoalsSelectionPageState createState() => _GoalsSelectionPageState();
}

class _GoalsSelectionPageState extends State<GoalsSelectionPage> {
  List<int> selectedGoals = [];

  void _onGoalSelected(int index) {
    setState(() {
      if (selectedGoals.contains(index)) {
        selectedGoals.remove(index);
      } else {
        if (selectedGoals.length < 5) {
          selectedGoals.add(index);
        }
      }
    });
  }

  void _onNextPressed() {
    if (selectedGoals.length == 5) {
      widget.userChoices.selectedGoals = selectedGoals;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DonationPage(userChoices: widget.userChoices),
        ),
      );
    }
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
            SizedBox(height: 10),
            SizedBox(
              width: 346,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Which of these ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'sustainable development goals',
                      style: TextStyle(
                        color: Color(0xFF46A771),
                        fontSize: 24,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '? that matter to you?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Select 5 goals',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: sdgGoals.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onGoalSelected(index),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                        color: selectedGoals.contains(index)
                            ? Color(0xFFE8F5E9)
                            : Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Radio<int>(
                            value: index,
                            groupValue:
                                selectedGoals.contains(index) ? index : null,
                            onChanged: (value) => _onGoalSelected(index),
                            activeColor: Color(0xFF46A771),
                          ),
                          SizedBox(width: 5),
                          Text(
                            sdgGoals[index].description,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              '${selectedGoals.length}/5',
              style: TextStyle(
                color: Color(0xFF46A771),
                fontSize: 12,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: "Next",
                  onPressed: _onNextPressed,
                  isEnabled: selectedGoals.length == 5,
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
