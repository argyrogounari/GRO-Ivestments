import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;

  CustomButton({
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        foregroundColor: isEnabled ? Colors.white : Colors.grey,
        backgroundColor: isEnabled ? Color(0xFF46A771) : Colors.white,
        side: BorderSide(
            color: isEnabled ? Color(0x1446A771) : Color(0xFFFAFAFA)),
        padding: EdgeInsets.symmetric(
            horizontal: 50), // Adjust horizontal padding as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ).copyWith(
        elevation: MaterialStateProperty.all(0), // Remove hover shadow
        overlayColor:
            MaterialStateProperty.all(Colors.transparent), // Remove hover color
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 16.0), // Add vertical padding
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: isEnabled ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
