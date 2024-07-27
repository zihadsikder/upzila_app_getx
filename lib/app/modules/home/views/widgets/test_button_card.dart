import 'package:flutter/material.dart';

class TextButtonCard extends StatelessWidget {
  const TextButtonCard({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Colors.white,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
          ),
          IconButton(
            onPressed: onPressed,
            icon:Icon(Icons.arrow_forward_ios_sharp,color: Colors.green.shade200,),
          ),
        ],
      ),
    );
  }
}
