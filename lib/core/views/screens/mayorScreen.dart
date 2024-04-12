import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:facrerec1/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';
import 'package:facrerec1/core/views/widgets/may.dart';

class mayorScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: CustomSlidingSegmentedControl<int>(
                    initialValue: 5,
                    children: {
                      1: Text(
                        'بلاغ ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 136, 5),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      2: Text('الوثائق',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 136, 5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      3: Text('حالات الوالدة',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 136, 5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      4: Text('المعاشات والضمان الاجتماعي',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 136, 5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      5: Text('المشكلات الاجتماعية',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 136, 5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      6: Text(''),
                    },
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    thumbDecoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 0)),
                      ],
                    ),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                    onValueChanged: (v) {
                      print(v);
                    },
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 700,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            may(
                              imagePath: "assets/images/s1.png",
                              attendees: "البلاغ 1",
                              calender: '20-5-2024',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            may(
                              imagePath: "assets/images/s1.png",
                              attendees: "البلاغ 2",
                              calender: '20-5-2024',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            may(
                              imagePath: "assets/images/s1.png",
                              attendees: "البلاغ 3",
                              calender: '20-5-2024',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            may(
                              imagePath: "assets/images/s1.png",
                              attendees: " المعاشات والضمان الاجتماعي",
                              calender: '20-5-2024',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            may(
                              imagePath: "assets/images/s1.png",
                              attendees: "البلاغ 4",
                              calender: '20-5-2024',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
