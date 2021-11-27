import 'package:flutter/material.dart';
import 'package:my_portfolio/welcome.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investors Choice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome' : (context) => Welcome(),
        // '/socialMedialoader' : (context) => Medialoader(url:'https://www.investopedia.com/terms/i/investment.asp'),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}