import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.infinite),
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }
}
