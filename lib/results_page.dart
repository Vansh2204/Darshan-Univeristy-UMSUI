import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class results extends StatefulWidget {
  const results({super.key});

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  String? _selectedItem;
  final List<String> _listItems = [
    'Result'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2, // specify the number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Result'),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.indigo.shade800,
              tabs: [
                Tab(text: 'Transcript'),
                Tab(text: 'Result'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.cyan.shade800,
                        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: SizedBox(
                          width: 130,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'CPI\n-',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.pink.shade500,
                        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: SizedBox(
                          width: 130,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Backlog\n-',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sem Wise Result ',
                    style: GoogleFonts.exo2(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      if (index == 0) {
                        return Card(
                          elevation: 20,
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
                              _listItems[index],
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
                                  children: [
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    }),
                  ),
                  Flexible(
                    child: Text('Grades Obtained',
                        style: GoogleFonts.exo2(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 20,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            width: 70,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 20,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            width: 70,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 20,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            width: 70,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(top: 20),
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 0.8,
                      ),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration.collapsed(hintText: 'No Recent Result',hintStyle: TextStyle(color: Colors.grey)),
                      value: _selectedItem,
                      focusColor: Colors.transparent,
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _selectedItem = newValue;
                        });
                      },
                      items: <String>['']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}