import 'package:DU/Sem4_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class feespage extends StatefulWidget {
  const feespage({super.key});

  @override
  State<feespage> createState() => _feespageState();
}

class _feespageState extends State<feespage> {
  String? _selectedItem;
  final List<String> _listItems = [
    'Semester - 4 - Rs.62,000',
    'Semester - 3 - Rs.44,500'
  ];
  // String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fees'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Pay Fees',
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white)),
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.green,
            child: SizedBox(
              width: 200,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: Text(
                      'Total Fees Paid - Rs. 1,06,500',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              if (index == 0) {
                return Card(
                  elevation: 10,
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
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Column(
                          children: [Image.asset('assets/sem4_fees.jpeg')],
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
                    title: Text(_listItems[index],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center),
                    children: <Widget>[
                      ListTile(
                        title: Column(
                          children: [
                            Image.asset('assets/sem4_fees.jpeg'),
                            Image.asset('assets/sem4_fees.jpeg')
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
