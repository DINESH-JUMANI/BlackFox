import 'package:assignment/widgets/stars.dart';
import 'package:flutter/material.dart';

class CustomFeedback extends StatelessWidget {
  const CustomFeedback(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.message,
      required this.ratings});
  final String imagePath;
  final String name;
  final String message;
  final double ratings;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(width: 5),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          message,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black38,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 40,
          width: 110,
          color: Colors.grey.shade100,
          child: Row(
            children: [
              Stars(rating: ratings),
              const SizedBox(width: 5),
              Text('${ratings.toInt()}/5'),
            ],
          ),
        ),
      ],
    );
  }
}
