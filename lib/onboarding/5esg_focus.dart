import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/6donation.dart';

class EsgFocusPage extends StatefulWidget {
  final UserChoices userChoices;

  EsgFocusPage({required this.userChoices});

  @override
  _EsgFocusPageState createState() => _EsgFocusPageState();
}

class _EsgFocusPageState extends State<EsgFocusPage> {
  String? _selectedEsg;

  @override
  void initState() {
    super.initState();
    _selectedEsg = widget.userChoices.esgFocus;
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
              'SUSTAINABILITY VALUES',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Which of these ESG goals do you want to focus on?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedEsg = 'Environmental';
                      });
                    },
                    child: Container(
                      color: _selectedEsg == 'Environmental'
                          ? Colors.grey[300]
                          : Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Text('Environmental'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedEsg = 'Social';
                      });
                    },
                    child: Container(
                      color: _selectedEsg == 'Social'
                          ? Colors.grey[300]
                          : Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Text('Social'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedEsg = 'Governance';
                      });
                    },
                    child: Container(
                      color: _selectedEsg == 'Governance'
                          ? Colors.grey[300]
                          : Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Text('Governance'),
                        ],
                      ),
                    ),
                  ),
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
                  widget.userChoices.esgFocus = _selectedEsg;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DonationPage(userChoices: widget.userChoices)),
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
