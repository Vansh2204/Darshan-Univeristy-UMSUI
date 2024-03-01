import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lmstest_result extends StatefulWidget {
  const lmstest_result({super.key});

  @override
  State<lmstest_result> createState() => _lmstest_resultState();
}

class _lmstest_resultState extends State<lmstest_result> {
  String selectedItem = 'Sem 4'; // Default selected item
  List<String> dropdownItems = ['Sem 1', 'Sem 2', 'Sem 3', 'Sem 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LMS Test Result'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 20),
              child: DropdownButton<String>(
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                borderRadius: BorderRadius.circular(12),
                value: selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                },
                items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: displaySelectedWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget displaySelectedWidget() {
    switch (selectedItem) {
      case 'Sem 1':
        return Sem1();
      case 'Sem 2':
        return Sem2();
      case 'Sem 3':
        return Sem3();
      case 'Sem 4':
        return Sem4();
      default:
        return Container();
    }
  }
}

class Sem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'LMS marks not Found',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class Sem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'LMS marks not Found',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class Sem3 extends StatefulWidget {
  @override
  State<Sem3> createState() => _Sem3State();
}

class _Sem3State extends State<Sem3> {
  final List<String> _listItems3 = [
    '2301CS301 - Data Structure',
    '2301CS362 - Object Oriented Programming using Java',
    '2301CS363 - Web Technology - 1',
    '2301CS361 - Database Management System',
    '2301HS301 - Discrete Mathematics',
    '2301DU005 - Indian Knowledge System'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(
                    _listItems3[index],
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 1) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(_listItems3[index],
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 2) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(_listItems3[index],
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 3) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(_listItems3[index],
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 4) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(_listItems3[index],
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            } else if (index == 5) {
              return Card(
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade800,
                child: ExpansionTile(
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  textColor: Colors.black,
                  title: Text(_listItems3[index],
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
        )
      ],
    );
  }
}

class Sem4 extends StatefulWidget {
  @override
  State<Sem4> createState() => _Sem4State();
}

class _Sem4State extends State<Sem4> {
  final List<String> _listitems4 = [
    '2301CS404 - Python Programming',
    '2301CS461 - Web Technology - 2',
    '2301CS403 - Mobile Application Development using Flutter',
    '2301CS402 - Design and Analysis of Algorithms',
    '2301HS402 - Probability and Statistics'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.grey.shade800,
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                textColor: Colors.black,
                title: Text(
                  _listitems4[index],
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                children: <Widget>[
                  ListTile(
                    title: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            );
          } else if (index == 1) {
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.grey.shade800,
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                textColor: Colors.black,
                title: Text(_listitems4[index],
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                children: <Widget>[
                  ListTile(
                    title: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            );
          } else if (index == 2) {
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.grey.shade800,
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                textColor: Colors.black,
                title: Text(_listitems4[index],
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                children: <Widget>[
                  ListTile(
                    title: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            );
          } else if (index == 3) {
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.grey.shade800,
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                textColor: Colors.black,
                title: Text(_listitems4[index],
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                children: <Widget>[
                  ListTile(
                    title: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            );
          } else if (index == 4) {
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.grey.shade800,
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                textColor: Colors.black,
                title: Text(_listitems4[index],
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                children: <Widget>[
                  ListTile(
                    title: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            );
          }
        })),
      ],
    );
  }
}
