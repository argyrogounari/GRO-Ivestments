import 'package:flutter/material.dart';

class CustomToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final int value;
  final int groupValue;

  CustomToggleButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
    required this.value,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.black : Colors.black,
        backgroundColor: isSelected ? Color(0xFFE8F5E9) : Color(0xFFFAFAFA),
        side:
            isSelected ? BorderSide(color: Color(0xFF46A771)) : BorderSide.none,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0, // This removes the shadow
      ).copyWith(
        overlayColor:
            MaterialStateProperty.all(Colors.transparent), // Remove hover color
        elevation: MaterialStateProperty.all(0), // Remove hover shadow
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: Radio<int>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) {
                onPressed();
              },
              activeColor: Color(0xFF46A771),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black,
              height: 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
