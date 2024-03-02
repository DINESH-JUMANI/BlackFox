import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.backgroundColor = Colors.black,
    this.foregroundColor = Colors.white,
  });
  final String buttonText;
  final Color foregroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: const MaterialStatePropertyAll(Size.infinite),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(
          color: foregroundColor,
          fontSize: 10,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
