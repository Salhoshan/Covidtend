import 'package:flutter/material.dart';

class DandD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffF2F2F2),
        centerTitle: true,
        title: Text("Do's and Don'ts",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Open Sans',
                fontSize: 18,
                fontWeight: FontWeight.w800)),
      ),
      body: ListView(children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff72BCAF),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Male Patient.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wear a Mask',
                        style: TextStyle(
                            color: Color(0xff72BCAF),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Protect yourself by covering\nyour mouth and nose',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Facepalm.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Avoid touching your face',
                        style: TextStyle(
                            color: Color(0xffF05C5C),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Protect yourself by covering\nyour mouth and nose',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff72BCAF),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Hand Wash.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wash hands frequently',
                        style: TextStyle(
                            color: Color(0xff72BCAF),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Wash hands often with soap\nand water for at least 20 seconds',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/No Contact.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Avoid close contact',
                        style: TextStyle(
                            color: Color(0xffF05C5C),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Avoid close contact with others that\nare sick or have symptoms',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff72BCAF),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/No Crowd.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Avoid Crowded Places',
                        style: TextStyle(
                            color: Color(0xff72BCAF),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Steer clear of crowded places to\nprevent illness spread',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/No Flight.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Avoid traveling',
                        style: TextStyle(
                            color: Color(0xffF05C5C),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Avoid traveling unless you have\nan urgent event',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff72BCAF),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Hand Sanitizer.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Carry a hand sanitizer',
                        style: TextStyle(
                            color: Color(0xff72BCAF),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Use it to disinfect your hands\nafter touching random surfaces',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Temperature.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Don't ignore symptoms",
                        style: TextStyle(
                            color: Color(0xffF05C5C),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Be sure to contact the COVID-19 hotline\nwhen feeling symptoms to prevent\nthe virus from spreading',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff72BCAF),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Stay at Home.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stay at home',
                        style: TextStyle(
                            color: Color(0xff72BCAF),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Avoid contact with people as much\nas possible and remain indoors',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Container(
            height: 79,
            width: 385,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                        'images/Medicine.png',
                        height: 59,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Don't take medications",
                        style: TextStyle(
                            color: Color(0xffF05C5C),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Don't Take any medications for\nCOVID-19 unless it is approved for\nby the FDC, WHO, or CDC",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
