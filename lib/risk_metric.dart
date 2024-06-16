import 'package:flutter/material.dart';

class RiskMetricItem extends StatelessWidget {
  final String label;
  final String value;

  RiskMetricItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 9,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
        Divider(
          color: Color(0xFFE0E0E0), // Light grey color for the divider
          thickness: 1,
        ),
      ],
    );
  }
}
