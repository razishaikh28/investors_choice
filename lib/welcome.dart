import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'medialoader.dart';
import 'package:url_launcher/url_launcher.dart';

//Assignment
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white70, Colors.white30,Colors.white12, Colors.black26,Colors.black]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child : Text('Investors Choice',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 68,
                  fontFamily: 'Lobster',
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context ,MaterialPageRoute(builder: (context) => Medialoader(url : 'https://www.investopedia.com/terms/i/investment.asp')));
                    },child: Text('What is Investment', style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                    ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))
                      ),
                    ),
                    SizedBox(   //Use of SizedBox
                      height: 12,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context ,MaterialPageRoute(builder: (context) => Medialoader(url : 'https://www.investopedia.com/ask/answers/why-should-i-invest/')));
                    },child: Text('Why to Invest', style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                    ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))
                      ),
                    ),
                    SizedBox(   //Use of SizedBox
                      height: 12,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context ,MaterialPageRoute(builder: (context) => Medialoader(url : 'https://www.investopedia.com/managing-wealth/basic-investment-objectives/')));
                    },child: Text('Objectives of Investment', style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                    ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context ,MaterialPageRoute(builder: (context) => Medialoader(url : 'https://www.policybazaar.com/life-insurance/investment-plans/articles/best-investment-options-in-india/')));
                    },child: Text('Investment Options', style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                    ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Our Inspiration',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width:160,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: CircleAvatar(
                    radius:60,
                    backgroundImage: AssetImage('images/RJ5.jpeg'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7.0),
                child: RichText(
                  text: TextSpan(
                    text: '“Build a fighting spirit — take the bad with the good.”',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}



