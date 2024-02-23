import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';




class transport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3, // specify the number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Transport'),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.indigo.shade800,
              tabs: [
                Tab(text: 'Pass'),
                Tab(text: 'Receipt'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 320.0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    child: Image.asset('assets/bus_pass.jpeg'),
                    width: double.maxFinite,
                    height: 100,

                  ),
                ),
              ),
              Center(
                child: Text('No Receipt to Display',style: TextStyle(color: Colors.grey),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
