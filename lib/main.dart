import 'package:covidtend/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // Webscrape web = new Webscrape();
  // String infectionsToday = web.scrapeInfectionsToday();
  // String infectionsYesterday = web.scrapeInfectionsYesterday();
  //Webscrape web = new Webscrape();
  //web.scrapeInfectionsToday();

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
