import 'package:covidtend/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return getErrorWidget(context, errorDetails);
    };
    return MaterialApp(
      home: HomeScreen(),
    );
  }

  Widget getErrorWidget(BuildContext context, FlutterErrorDetails error) {
    return Center(child: CircularProgressIndicator());
  }
}
