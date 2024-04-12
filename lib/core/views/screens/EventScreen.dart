import 'package:facrerec1/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 244, 244, 244),
          title: Row(children: [
            SizedBox(
              width: 75,
            ),
            Text(
              "خدماتي",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 136, 5),
              ),
            ),
          ]),
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 136, 5),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "الاعلانات",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 136, 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        Container(
                          height: 100,
                          child: Text(
                            "حالة انسانية ، أرملة لثلاثة أطفال ليس لها عائل وتحتاج مبلغ ٢٠٠٠٠ لاجراء عملية جراحية",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 136, 5),
                            ),
                          ),
                        ),
                        Text(
                          "بازار الأسر المنتجة يقام في يوم الاثنين في حديقة الزهور الدعوة عامة",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 136, 5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "الخدمات",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 136, 5),
                  ),
                ),
                SizedBox(
                  height: 700,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      event(
                        imagePath: "assets/images/s1.png",
                        attendees: "البلاغات",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      event(
                        imagePath: "assets/images/s1.png",
                        attendees: "الوثائق والمشاهد، وإصدار التعاريف",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      event(
                        imagePath: "assets/images/s1.png",
                        attendees: "إثبات حالة الولادة المنزلية",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      event(
                        imagePath: "assets/images/s1.png",
                        attendees: " المعاشات والضمان الاجتماعي",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      event(
                        imagePath: "assets/images/s1.png",
                        attendees: " المشكلات الاجتماعية",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
