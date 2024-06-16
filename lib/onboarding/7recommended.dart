import 'package:flutter/material.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';

class InvestmentPage extends StatelessWidget {
  final UserChoices userChoices;

  InvestmentPage({required this.userChoices});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
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
                  'RECOMMENDED',
                  style: TextStyle(
                    color: Color(0xFF46A771),
                    fontSize: 12,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.05,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 346,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Steady ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Gro',
                          style: TextStyle(
                            color: Color(0xFF46A771),
                            fontSize: 24,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' Portfolio',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: Center(
                    child: Image.asset(
                      'assets/images/recommended_graph1.png', // Make sure to update this path to your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '*Simulated Projections',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Portfolio value',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      color: Color(0xFF46A771),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Your Sustainability Impact',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Portfolio Allocation',
                  style: TextStyle(
                    color: Color(0xFF46A771),
                    fontSize: 18,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10),
                AllocationBar(
                  label: 'Stocks',
                  percentage: 60,
                  color: Color(0xFF46A771),
                ),
                AllocationBar(
                  label: 'Indices',
                  percentage: 30,
                  color: Colors.grey,
                ),
                AllocationBar(
                  label: 'Commodities',
                  percentage: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 20),
                Text(
                  'Risk Metrics',
                  style: TextStyle(
                    color: Color(0xFF46A771),
                    fontSize: 18,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                // Additional content can be added here...
                SizedBox(height: 80), // To leave space for the bottom button
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    child: Text(
                      '*Simulations are based on past performance and may not be reliable for future results.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF595D62),
                        fontSize: 9,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: "Invest",
                      onPressed: () {
                        // Handle invest button press
                      },
                      isEnabled: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AllocationBar extends StatelessWidget {
  final String label;
  final int percentage;
  final Color color;

  AllocationBar(
      {required this.label, required this.percentage, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: double.infinity,
          height: 20,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                widthFactor: percentage / 100,
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
