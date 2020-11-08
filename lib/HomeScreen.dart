import 'package:covidtend/DandD.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';
import 'Symptoms.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var infectedToday;
  var infectedYesterday;
  var deathsToday;
  var deathsYesterday;
  var recovered;
  String changeInfected;
  String changeDeaths;
  bool loaded = false;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var url = 'https://www.worldometers.info/coronavirus/country/saudi-arabia/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final mainclass = document.getElementsByClassName('news_post');
    //INFECTED RESULTS
    var resultsInfected =
        mainclass[0].getElementsByTagName('strong')[0].innerHtml;
    var infectedString = resultsInfected.substring(0, 4);
    //DAY BEFORE
    var resultsInfYesterday =
        mainclass[1].getElementsByTagName('strong')[0].innerHtml;
    var infectedString2 = resultsInfYesterday.substring(0, 4);
    //DEATH RESULTS
    var resultsDeaths =
        mainclass[0].getElementsByTagName('strong')[1].innerHtml;
    var deathsString = resultsDeaths.substring(0, 3);
    //DAY BEFORE
    var resultsDeathsYesterday =
        mainclass[1].getElementsByTagName('strong')[1].innerHtml;
    var deathsString2 = resultsDeathsYesterday.substring(0, 3);
    //RECOVERIES RESULTS
    final mainclassRecover =
        document.getElementsByClassName('maincounter-number');
    var resultsRecover =
        mainclassRecover[2].getElementsByTagName('span')[0].innerHtml;
    setState(() {
      infectedToday = infectedString;
      infectedYesterday = infectedString2;
      deathsToday = deathsString;
      deathsYesterday = deathsString2;
      recovered = resultsRecover;
      loaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Color(0xffE3E1E1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffE3E1E1),
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          'Covidtend',
          style: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'Open Sans',
              fontSize: 18,
              fontWeight: FontWeight.w800),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Current State',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'Open Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  todaysDate() + ', Saudi Arabia',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'Open Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: media.width * 0.015,
              ),
              Container(
                height: media.height * 0.19,
                width: media.width * 0.31,
                decoration: BoxDecoration(
                    color: Color(0xffF2F6FB),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.46,
                        child: Text(
                          'Cases',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      (loaded)
                          ? Text(
                              infectedToday,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontFamily: 'Open Sans',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            )
                          : CircularProgressIndicator(),
                      Text(
                        calculatePercentage(infectedToday, infectedYesterday) +
                            "% " +
                            isPositiveString(calculatePercentage(
                                infectedToday, infectedYesterday)),
                        style: TextStyle(
                            color: isPositive(calculatePercentage(
                                infectedToday, infectedYesterday)),
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: media.width * 0.02,
              ),
              Container(
                height: media.height * 0.19,
                width: media.width * 0.31,
                decoration: BoxDecoration(
                    color: Color(0xffF2F6FB),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(children: [
                    Opacity(
                      opacity: 0.46,
                      child: Text(
                        'Deaths',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    (loaded)
                        ? Text(
                            deathsToday,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'Open Sans',
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          )
                        : CircularProgressIndicator(),
                    Text(
                      calculatePercentage(deathsToday, deathsYesterday) +
                          "% " +
                          isPositiveString(calculatePercentage(
                              deathsToday, deathsYesterday)),
                      style: TextStyle(
                          color: isPositive(calculatePercentage(
                              deathsToday, deathsYesterday)),
                          fontFamily: 'Open Sans',
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: media.width * 0.02,
              ),
              Container(
                height: media.height * 0.19,
                width: media.width * 0.31,
                decoration: BoxDecoration(
                    color: Color(0xffF2F6FB),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(children: [
                    Opacity(
                      opacity: 0.46,
                      child: Text(
                        'Recovered',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    (loaded)
                        ? Text(
                            recovered,
                            style: TextStyle(
                                color: Color(0xff26A86A),
                                fontFamily: 'Open Sans',
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          )
                        : CircularProgressIndicator(),
                  ]),
                ),
              ),
              SizedBox(
                width: media.width * 0.015,
              )
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: media.height * 0.519,
            width: media.width,
            decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(0.15),
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Column(
                children: [
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  new Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xffF2F6FB),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Symptoms()));
                      },
                      child: Container(
                        height: media.height * 0.114,
                        width: media.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF2F6FB).withOpacity(0.80),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 18),
                          child: Row(
                            children: [
                              Text(
                                'Symptoms',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Open Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: media.width * 0.35,
                              ),
                              Image.asset(
                                'images/LungInfected.png',
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xffF2F6FB),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DandD()));
                      },
                      child: Container(
                        height: media.height * 0.114,
                        width: media.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF2F6FB).withOpacity(0.80),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 18),
                          child: Row(
                            children: [
                              Text(
                                "Do's and Don'ts",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Open Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: media.width * 0.23,
                              ),
                              Image.asset(
                                'images/Patient.png',
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xffF2F6FB),
                      onTap: () {},
                      child: Container(
                        height: media.height * 0.114,
                        width: media.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF2F6FB).withOpacity(0.80),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 18),
                          child: Row(
                            children: [
                              Text(
                                'Locate Hospital',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Open Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: media.width * 0.24,
                              ),
                              Image.asset(
                                'images/Hospital.png',
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xffF2F6FB),
                      onTap: () {
                        launch("tel://937");
                      },
                      child: Container(
                        height: media.height * 0.114,
                        width: media.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF05C5C).withOpacity(0.81),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 15),
                          child: Row(
                            children: [
                              Text(
                                'Call Hotline',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Open Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: media.width * 0.32,
                              ),
                              Image.asset(
                                'images/Phone.png',
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  todaysDate() {
    var date = DateTime.now();
    var newDate = DateFormat.MMMMd().format(date);
    return newDate;
  }

  calculatePercentage(var today, var yesterday) {
    double percent;
    percent = double.parse(today) - double.parse(yesterday);
    percent = (percent / double.parse(yesterday)) * 100;
    return percent.toStringAsFixed(2);
  }

  Color isPositive(String string) {
    if (double.parse(string) > 0) {
      return Color(0xffD43A3A);
    } else {
      return Color(0xff26A86A);
    }
  }

  String isPositiveString(String string) {
    if (double.parse(string) > 0) {
      return "Increase";
    } else {
      return "Decrease";
    }
  }
}
