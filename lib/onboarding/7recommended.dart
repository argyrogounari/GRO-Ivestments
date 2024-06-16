import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaithon/custom_button.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/8invest_amount.dart';
import 'package:hackaithon/risk_metric.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                SizedBox(
                    height: 56), // Height of AppBar to prevent content overlap
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
                  width: 344,
                  height: 235,
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/recommended_graph1.png', // Make sure to update this path to your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Portfolio ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Allocation',
                            style: TextStyle(
                              color: Color(0xFF46A771),
                              fontSize: 16,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow_right.svg',
                          color: Color(0xFF46A771),
                          width: 20,
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllocationRow(label: 'Stocks', percentage: 0.6),
                      SizedBox(height: 10),
                      AllocationRow(label: 'Indices', percentage: 0.3),
                      SizedBox(height: 10),
                      AllocationRow(label: 'Commodities', percentage: 0.1),
                    ],
                  ),
                ),
                SizedBox(height: 27),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Risk ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Metrics',
                        style: TextStyle(
                          color: Color(0xFF46A771),
                          fontSize: 16,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Performance',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(height: 14),
                RiskMetricItem(
                  label: 'Average annual return',
                  value: '+10.3%',
                ),
                RiskMetricItem(
                  label: 'Median return',
                  value: '+11.19%',
                ),
                RiskMetricItem(
                  label: 'Best year return',
                  value: '+21.99%',
                ),
                SizedBox(height: 18),
                Text(
                  'Risk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(height: 14),
                RiskMetricItem(
                  label: 'Maximum breakdown',
                  value: '-21.63%',
                ),
                RiskMetricItem(
                  label: 'Average breakdown',
                  value: '+11.19%',
                ),
                RiskMetricItem(
                  label: 'Standard Deviation',
                  value: '+21.99%',
                ),
                SizedBox(height: 40),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sustainability ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Impact',
                        style: TextStyle(
                          color: Color(0xFF46A771),
                          fontSize: 16,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 344,
                  height: 81,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFAFAFA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 18,
                        top: 12,
                        child: SizedBox(
                          width: 296,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '5 year projection of your ',
                                  style: TextStyle(
                                    color: Color(0xFF595D62),
                                    fontSize: 9,
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'impact on the environment',
                                  style: TextStyle(
                                    color: Color(0xFF46A771),
                                    fontSize: 9,
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' based on your investment portfolio ',
                                  style: TextStyle(
                                    color: Color(0xFF595D62),
                                    fontSize: 9,
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 159,
                        top: 40,
                        child: Text(
                          '60% Impact',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15.27,
                        top: 55,
                        child: Container(
                          width: 314.49,
                          height: 6,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.25,
                                  child: Container(
                                    width: 314.49,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF46A771),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.50),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 188.69,
                                  height: 6,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF46A771),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                if (userChoices.donationPercentage != null &&
                    userChoices.donationPercentage! > 0)
                  SizedBox(
                    width: 346,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'We will ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text:
                                'donate ${userChoices.donationPercentage?.round()}%',
                            style: TextStyle(
                              color: Color(0xFF46A771),
                              fontSize: 24,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' of your profits to help causes you believe in.',
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

                SizedBox(height: 200), // To leave space for the bottom button
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 56,
              child: Row(
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
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: "Invest in this Portfolio",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InvestmentInputPage(),
                          ),
                        );
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

class AllocationRow extends StatelessWidget {
  final String label;
  final double percentage;

  AllocationRow({required this.label, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 9,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text(
              '${(percentage * 100).round()}%',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 9,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        LinearPercentIndicator(
          padding: EdgeInsets.all(0),
          animation: true,
          lineHeight: 6.0,
          animationDuration: 2500,
          percent: percentage,
          barRadius: Radius.circular(100),
          progressColor: Color(0xFF3CA0B9),
          backgroundColor: Color(0xD0F5F5F5),
        ),
      ],
    );
  }
}
