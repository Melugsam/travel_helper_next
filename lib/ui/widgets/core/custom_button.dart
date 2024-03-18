import 'package:flutter/material.dart';

class CustomButtonStyle extends ButtonStyle {
  final Color customBackgroundColor;
  final Color textColor;
  final double textSize;
  final double borderRadius;
  final FontWeight? fontWeight;

  CustomButtonStyle(
      {required this.customBackgroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.textSize,
      this.fontWeight})
      : super(
          backgroundColor:
              MaterialStatePropertyAll<Color>(customBackgroundColor),
          foregroundColor: MaterialStatePropertyAll<Color>(textColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(
              fontSize: textSize,
              fontFamily: 'Manrope',
              fontWeight: fontWeight ?? FontWeight.w600)),
        );
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final CustomButtonStyle style;
  final IconData? icon;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.style,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            if (icon != null) const SizedBox(width: 4.0),
            if (icon != null) Icon(icon),
          ],
        ),
      ),
    );
  }
}
