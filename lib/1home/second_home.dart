import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondHomePage extends StatelessWidget {
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
            SizedBox(height: 10),
            Text(
              'Let’s look at your investments',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w700,
                height: 0,
                letterSpacing: -0.94,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home_background.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 281,
                    child: Text(
                      'Portfolio Summary',
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 9,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Text(
                    '€132.56',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '+€32.56',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Color(0xFF46A771),
                              fontSize: 14,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: -1,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '+30%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow_circle.svg',
                        width: 31,
                        height: 31,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
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
              name: 'ANTM',
              company: 'Aneka Tambang Tbk.',
              sustainabilityScore: 78,
              value: '€2,000',
              change: '-3.10%',
              isPositive: false,
              logoPath: 'assets/icons/logo_example.png',
            ),
            PerformerCard(
              name: 'ANTM',
              company: 'Aneka Tambang Tbk.',
              sustainabilityScore: 78,
              value: '€188',
              change: '+2.44%',
              isPositive: true,
              logoPath: 'assets/icons/logo_example.png',
            ),
            PerformerCard(
              name: 'ANTM',
              company: 'Aneka Tambang Tbk.',
              sustainabilityScore: 78,
              value: '€3,480',
              change: '-4.40%',
              isPositive: false,
              logoPath: 'assets/icons/logo_example.png',
            ),
            PerformerCard(
              name: 'ANTM',
              company: 'Aneka Tambang Tbk.',
              sustainabilityScore: 78,
              value: '€3,480',
              change: '-4.40%',
              isPositive: false,
              logoPath: 'assets/icons/logo_example.png',
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
          child: Image.asset(imagePath, fit: BoxFit.cover),
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

class PerformerCard extends StatelessWidget {
  final String name;
  final String company;
  final int sustainabilityScore;
  final String value;
  final String change;
  final bool isPositive;
  final String logoPath;

  PerformerCard({
    required this.name,
    required this.company,
    required this.sustainabilityScore,
    required this.value,
    required this.change,
    required this.isPositive,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Image(image: AssetImage(logoPath)),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xFF03314B),
                      fontSize: 14,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    company,
                    style: TextStyle(
                      color: Color(0xCC03314B),
                      fontSize: 10,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Sustainability Score: $sustainabilityScore%',
                    style: TextStyle(
                      color: Color(0xFF46A771),
                      fontSize: 10,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: Color(0xFF03314B),
                      fontSize: 14,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    change,
                    style: TextStyle(
                      color: isPositive ? Colors.green : Colors.red,
                      fontSize: 12,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0x66C6C6C6),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ) // Add this line for the divider
      ],
    );
  }
}
