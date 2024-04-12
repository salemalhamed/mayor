import 'package:flutter/material.dart';

class event extends StatelessWidget {
  final String imagePath;
  final String attendees;

  event({
    required this.imagePath,
    required this.attendees,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/EventD');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 0, 127, 4)),
            height: 50,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  attendees.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
