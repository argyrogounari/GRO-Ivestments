import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/4how_much_invest.dart';

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
              'How you feel about\ninvestment risk and reward?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                RadioListTile<int>(
                  title: Text('Very Low Risk'),
                  value: 0,
                  groupValue: _selectedRisk,
                  onChanged: (value) {
                    setState(() {
                      _selectedRisk = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Low Risk'),
                  value: 1,
                  groupValue: _selectedRisk,
                  onChanged: (value) {
                    setState(() {
                      _selectedRisk = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Moderate Risk'),
                  value: 2,
                  groupValue: _selectedRisk,
                  onChanged: (value) {
                    setState(() {
                      _selectedRisk = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('High Risk'),
                  value: 3,
                  groupValue: _selectedRisk,
                  onChanged: (value) {
                    setState(() {
                      _selectedRisk = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Very High Risk'),
                  value: 4,
                  groupValue: _selectedRisk,
                  onChanged: (value) {
                    setState(() {
                      _selectedRisk = value;
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
                  widget.userChoices.investmentRisk = _selectedRisk;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InvestmentAmountPage(
                            userChoices: widget.userChoices)),
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
