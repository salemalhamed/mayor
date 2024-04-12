import 'package:facrerec1/core/views/widgets/evnts.dart';
import 'package:flutter/material.dart';

class mayoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "بلاغ عن تراكم القمامة",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all()),
                        child: Center(
                          child: Text(
                            """أتقدم إليكم ببلاغي هذا، أنا محمد السالم، ساكن في شارع الزهور رقم 5، لأعرض عليكم مشكلة تؤرق سكان الحي وتتطلب تدخلكم العاجل. لقد لاحظنا في الآونة الأخيرة تراكم القمامة في الزاوية الشمالية من الحي، بالقرب من ملعب الأطفال، مما يشكل خطرًا على الصحة العامة ويؤثر سلبًا على جمالية الحي. كما أن الروائح الكريهة بدأت تنتشر، وهناك خوف من جذب الحشرات والقوارض. نأمل منكم اتخاذ الإجراءات اللازمة لحل هذه المشكلة في أقرب وقت ممكن. نحن على ثقة بأنكم ستولون هذا الأمر الاهتمام الذي يستحقه وستعملون على تحسين جودة الحياة في حي المنارة.نشكركم مقدمًا على تعاونكم ونتطلع إلى رؤية النتائج الإيجابية.
  
              مع خالص التقدير،
              محمد السالم
              8 أبريل 2024""",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "الوثائق:",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        "assets/images/s.jpeg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ... Existing code for the image display ...

                        SizedBox(height: 10),

                        SizedBox(height: 10),

                        // First TextFormField for title
                        TextFormField(
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: "الرد المباشر",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 10),

                        // Second TextFormField for multiline input
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Center(
                                child: Text(
                              "ارسال",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            )),
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 136, 5),
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Center(
                                child: Text(
                              "رفع البلاغ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            )),
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 136, 5),
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}
