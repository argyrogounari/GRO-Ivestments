import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackaithon/1home/second_home.dart';
import 'package:hackaithon/onboarding/1geting_started.dart';

class FirstHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HI DANIEL',
              style: TextStyle(
                color: Color(0xFF46A771),
                fontSize: 12,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.05,
              ),
            ),
            SizedBox(height: 6),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Make a difference\nWith your money',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.94,
                    ),
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: Color(0xFF46A771),
                      fontSize: 32,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.94,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/images/environmental.svg',
                  width: 105,
                  height: 140,
                ),
                SvgPicture.asset(
                  'assets/images/social.svg',
                  width: 105,
                  height: 140,
                ),
                SvgPicture.asset(
                  'assets/images/governance.svg',
                  width: 105,
                  height: 140,
                ),
              ],
            ),
            SizedBox(height: 43),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboarding()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home_background.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo_kinda.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Gro',
                              style: TextStyle(
                                color: Color(0xFF46A771),
                                fontSize: 23,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.05,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.05,
                              ),
                            ),
                            TextSpan(
                              text: 'Robo-Investor',
                              style: TextStyle(
                                color: Color(0xFF949494),
                                fontSize: 23,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.05,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Top ',
                        style: TextStyle(
                          color: Color(0xFF46A771),
                          fontSize: 24,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                      TextSpan(
                        text: 'Performers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xFF46A771),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
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
                ),
              ],
            ),
            SizedBox(height: 21),
            PerformerCard(
              name: 'MSFT',
              company: 'Microsoft',
              sustainabilityScore: 78,
              value: '€2,000',
              change: '-3.10%',
              isPositive: false,
              logoPath: 'assets/icons/log1.png',
            ),
            PerformerCard(
              name: 'NKE',
              company: 'Nike',
              sustainabilityScore: 71,
              value: '€188',
              change: '+2.44%',
              isPositive: true,
              logoPath: 'assets/icons/log2.png',
            ),
            PerformerCard(
              name: 'AAPL',
              company: 'Apple',
              sustainabilityScore: 84,
              value: '€3,480',
              change: '-4.40%',
              isPositive: false,
              logoPath: 'assets/icons/log3.png',
            ),
            PerformerCard(
              name: 'CSCO',
              company: 'Cisco',
              sustainabilityScore: 67,
              value: '€3,480',
              change: '-4.40%',
              isPositive: false,
              logoPath: 'assets/icons/log4.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  CategoryCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: SvgPicture.asset(imagePath, fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
