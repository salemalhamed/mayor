import 'package:flutter/material.dart';

class conscreen extends StatelessWidget {
  const conscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "تم استلام بلاغك بنجاح",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 136, 5),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "رقم البلاغ: 80808080",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 136, 5),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "سيتم التعامل مع بلاغك من الجهات المختصة",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 136, 5),
                ),
              ),
            ],
          ),
          Container(
            width: 400,
            height: 280,
            child: Image.asset(
              "assets/images/parc.jpg",
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
