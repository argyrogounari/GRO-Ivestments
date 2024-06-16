import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/8recommended.dart';

class InvestmentInputPage extends StatefulWidget {
  final UserChoices userChoices;

  InvestmentInputPage({required this.userChoices});

  @override
  _InvestmentInputPageState createState() => _InvestmentInputPageState();
}

class _InvestmentInputPageState extends State<InvestmentInputPage> {
  late TextEditingController _initialInvestmentController;
  late TextEditingController _monthlyInvestmentController;

  @override
  void initState() {
    super.initState();
    _initialInvestmentController = TextEditingController(text: '€100');
    _monthlyInvestmentController = TextEditingController();
  }

  @override
  void dispose() {
    _initialInvestmentController.dispose();
    _monthlyInvestmentController.dispose();
    super.dispose();
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
            SizedBox(
              width: 157,
              height: 14,
              child: Text(
                'STEADY GRO PORTFOLIO',
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
            SizedBox(height: 15),
            SizedBox(
              width: 346,
              child: Text(
                'How much would you like to invest to begin with?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 35),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Starting',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' Investment',
                    style: TextStyle(
                      color: Color(0xFF46A771),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _initialInvestmentController,
              decoration: InputDecoration(
                hintText: 'Amount',
                hintStyle: TextStyle(
                  color: Color(0xFFB2B2B2),
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
                filled: true,
                fillColor: Color(0xFFFAFAFA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600,
                height: 0.05,
              ),
            ),
            SizedBox(height: 62),
            SizedBox(
              width: 349,
              child: Text(
                'Set Monthly Recurring Investment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _monthlyInvestmentController,
              decoration: InputDecoration(
                hintText: 'Input Amount',
                hintStyle: TextStyle(
                  color: Color(0xFFB2B2B2),
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
                filled: true,
                fillColor: Color(0xFFFAFAFA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: "Show recommendations",
                  onPressed: () {
                    widget.userChoices.initialInvestment =
                        _initialInvestmentController.text;
                    widget.userChoices.monthlyInvestment =
                        _monthlyInvestmentController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            InvestmentPage(userChoices: widget.userChoices),
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
