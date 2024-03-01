import 'package:DU/academic_calender.dart';
import 'package:DU/attendence_page.dart';
import 'package:DU/feedback.dart';
import 'package:DU/fees_page.dart';
import 'package:DU/lms_page.dart';
import 'package:DU/results_page.dart';
import 'package:DU/schedule_page.dart';
import 'package:DU/timetable_dialog.dart';
import 'package:DU/transport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'DU clone',
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black,
                    // decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.vertical(bottom: Radius.circular(100))),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'DIET',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    height: 250,
                  )
                ],
              ),
              Positioned(
                top: 15.0,
                right: 20.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 55.0, 0.0, 0.0),
                child: Text(
                  'Hathi Vansh Hirenbhai',
                  style:
                      TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 75.0, 0.0, 0.0),
                child: Text(
                  ' (23010101622)',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 95.0, 0.0, 0.0),
                    child: Text(
                      '8849039838 | ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 95.0, 0.0, 0.0),
                    child: Text(
                      '23010101622@darshan.ac.in',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 135.0, 0.0, 0.0),
                child: Divider(
                  color: Colors.white,
                  height: 10,
                  thickness: 1.3,
                  indent: 10,
                  endIndent: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'Branch \n CSE',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'Sem \n 4',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'Div \n CSE-4D',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'Roll \n 622',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'Batch \n 2',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220.0),
                child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => calenderlist()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.cyan,
                                    size: 30,
                                  ),
                                  Text(
                                    'Academic \n Calender',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            return timetable_bottomsheet(context);
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.book_outlined,
                                    color: Colors.lightBlue,
                                    size: 30,
                                  ),
                                  Text(
                                    'TimeTable',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => attendence()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.list_outlined,
                                    color: Colors.indigo,
                                    size: 30,
                                  ),
                                  Text(
                                    'Attendence',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320.0),
                child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => lms()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.book_online,
                                    color: Colors.red.shade200,
                                    size: 30,
                                  ),
                                  Text(
                                    'LMS',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => feedback()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.feedback_outlined,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                  Text(
                                    'Feedback',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => feespage()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    color: Colors.green,
                                    size: 30,
                                  ),
                                  Text(
                                    'Fees',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 420.0),
                child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => transport()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.directions_bus,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Text(
                                    'Transport',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => schedule()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.schedule_rounded,
                                    color: Colors.deepPurpleAccent,
                                    size: 30,
                                  ),
                                  Text(
                                    'Schedule',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => results()),
                            );
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Colors.white,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.featured_play_list,
                                    color: Colors.red.shade200,
                                    size: 30,
                                  ),
                                  Text(
                                    'Results',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 520.0),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lmstest_result()),
                          );
                        },
                        child: Card(
                          elevation: 10,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Colors.white,
                          child: SizedBox(
                            width: 80,
                            height: 83,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.list_alt_outlined,
                                  color: Colors.cyanAccent.shade400,
                                  size: 30,
                                ),
                                Text(
                                  'LMS Text \n Result ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
        
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
