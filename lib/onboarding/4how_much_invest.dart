import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/custom_toggle.dart';
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
              width: 346,
              child: Text(
                'How much do you invest or plan to invest per year?',
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
                  text: '0 - \$5,000',
                  isSelected: _selectedAmount == 0,
                  onPressed: () {
                    setState(() {
                      _selectedAmount = 0;
                    });
                  },
                  value: 0,
                  groupValue: _selectedAmount ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: '\$5,000 - \$10,000',
                  isSelected: _selectedAmount == 1,
                  onPressed: () {
                    setState(() {
                      _selectedAmount = 1;
                    });
                  },
                  value: 1,
                  groupValue: _selectedAmount ?? -1,
                ),
                SizedBox(height: 7),
                CustomToggleButton(
                  text: '\$10,000 and above',
                  isSelected: _selectedAmount == 2,
                  onPressed: () {
                    setState(() {
                      _selectedAmount = 2;
                    });
                  },
                  value: 2,
                  groupValue: _selectedAmount ?? -1,
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
                    widget.userChoices.investmentAmount = _selectedAmount;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              EsgFocusPage(userChoices: widget.userChoices)),
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
