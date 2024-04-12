import 'package:flutter/material.dart';

class may extends StatelessWidget {
  final String imagePath;
  final String attendees;
  final String calender;

  may({
    required this.imagePath,
    required this.attendees,
    required this.calender,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/ms');
        },
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              width: 400,
              child: Container(
                  color: Colors.black,
                  child: Image.asset(imagePath, fit: BoxFit.fill)),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                      Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                    ],
                  ),
                ),
                height: 200,
                width: 400,
              ),
            ),
            Positioned(
              top: 150,
              right: 15,
              child: Text(
                attendees.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 150,
              right: 150,
              child: Text(
                "التفاصيل",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 15,
              child: Row(
                children: [
                  Text(
                    calender.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
