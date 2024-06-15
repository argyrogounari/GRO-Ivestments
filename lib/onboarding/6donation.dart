import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/99contribute.dart';

class DonationPage extends StatefulWidget {
  final UserChoices userChoices;

  DonationPage({required this.userChoices});

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  double _donationPercentage = 5;
  bool _decideLater = false;

  @override
  void initState() {
    super.initState();
    _donationPercentage = widget.userChoices.donationPercentage ?? 5;
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
              'CONTRIBUTE TO CAUSES',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Would you like to donate and help causes you believe in?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'P.S. You can save on taxes as well!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'I would like to donate',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                Text(
                  '${_donationPercentage.round()}%',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Slider(
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
                    activeColor: Colors.pink,
                    inactiveColor: Colors.pink[100],
                  ),
                ),
              ],
            ),
            Text(
              'Of my profits to causes that support my SDG goals',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text('Let me decide later'),
              value: _decideLater,
              onChanged: (value) {
                setState(() {
                  _decideLater = value ?? false;
                });
              },
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
                  widget.userChoices.donationPercentage =
                      _decideLater ? null : _donationPercentage;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ContributePage(userChoices: widget.userChoices)),
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
}
