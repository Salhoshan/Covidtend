import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffF2F2F2),
        centerTitle: true,
        title: Text('Symptoms',
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
              padding: const EdgeInsets.only(left: 11, right: 83),
              child: Row(
                children: [
                  Image.asset(
                    'images/Fever.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fever',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Higher tempreture than usual.\nAround 37 degrees Celsius',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Coughing.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dry Cough',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'A dry cough is one that is not\nassociated with a phlegm in the throat. ',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Slouch.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fatigue',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Lose of motivation and energy ',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Smell.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Loss of taste or smell',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'A frequent symptom of COVID-19 ',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Flu.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nasal Congestion',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Congestion is when your nose\nbecomes stuffed up and inflamed ',
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
              padding: const EdgeInsets.only(left: 11, right: 50),
              child: Row(
                children: [
                  Image.asset(
                    'images/Redeye.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Conjunctivitis (Red Eyes)',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'An inflammation or infection of\nthe transparent membrane on your eyelid ',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/SoreThroat.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sore throat',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Painful, dry, or\nscratchy feeling in the throat',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Headache.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Headache',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Pain arising from\nthe head or upper neck',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Elbowpain.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muscle or joint pain',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Pain or inflammation arising\nfrom any part of a joint or muscle',
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
              padding: const EdgeInsets.only(left: 11, right: 69),
              child: Row(
                children: [
                  Image.asset(
                    'images/Oxygen.png',
                    height: 67,
                    width: 58,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shortness of breath',
                        style: TextStyle(
                            color: Color(0xffFF6464),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Intense tightening in the chest\nor a feeling of suffocation',
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
