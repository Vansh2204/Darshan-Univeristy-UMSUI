import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lms extends StatelessWidget {
  const lms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LMS'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 120),
              child: Image.asset(
                'assets/DUlogo2.png',
              ),
              color: Colors.white,
              height: 200,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Text(
                'Learning Management System \nLMS',
                style: TextStyle( fontSize: MediaQuery.of(context).size.width * 0.05, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: InkWell(
                      onLongPress: (){
                        print("sjdfjksdf");
                      },
                      child: Image.asset(
                        'assets/lms_image.jpg',
                      ),
                    )
                  ),
                  // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301CS402 - Design and Analysis of Algorithm',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: Image.asset('assets/lms_image.jpg'),
                  ),
                  SizedBox(height: 10), // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301CS4023 - Mobile Application Development using Flutter',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: Image.asset('assets/lms_image.jpg'),
                  ),
                  SizedBox(height: 10), // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301CS404 - Python Programming',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: Image.asset('assets/lms_image.jpg'),
                  ),
                  SizedBox(height: 10), // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301CS461 - Web Technology - 2',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: Image.asset('assets/lms_image.jpg'),
                  ),
                  SizedBox(height: 10), // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301HS402 - Probability and Statistics',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: null,
                    height: null,
                    child: Image.asset('assets/lms_image.jpg'),
                  ),
                  SizedBox(height: 10), // Add space between ListTile and Footer
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '2301HS403 - Professional Communication - 1',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}