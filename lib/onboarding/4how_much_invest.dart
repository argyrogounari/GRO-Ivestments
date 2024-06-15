import 'package:flutter/material.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/5esg_focus.dart';

class InvestmentAmountPage extends StatefulWidget {
  final UserChoices userChoices;

  InvestmentAmountPage({required this.userChoices});

  @override
  _InvestmentAmountPageState createState() => _InvestmentAmountPageState();
}

class _InvestmentAmountPageState extends State<InvestmentAmountPage> {
  int? _selectedAmount;

  @override
  void initState() {
    super.initState();
    _selectedAmount = widget.userChoices.investmentAmount;
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
              'How much do you invest or plan to invest per year?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                RadioListTile<int>(
                  title: Text('0 - \$5,000'),
                  value: 0,
                  groupValue: _selectedAmount,
                  onChanged: (value) {
                    setState(() {
                      _selectedAmount = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('\$5,000 - \$10,000'),
                  value: 1,
                  groupValue: _selectedAmount,
                  onChanged: (value) {
                    setState(() {
                      _selectedAmount = value;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('\$10,000 and above'),
                  value: 2,
                  groupValue: _selectedAmount,
                  onChanged: (value) {
                    setState(() {
                      _selectedAmount = value;
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
                  widget.userChoices.investmentAmount = _selectedAmount;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EsgFocusPage(userChoices: widget.userChoices)),
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
