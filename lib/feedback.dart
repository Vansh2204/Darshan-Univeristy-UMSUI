import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3, // specify the number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Feedback'),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.indigo.shade800,
              tabs: [
                Tab(text: 'Current'),
                Tab(text: 'Past'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Content for Tab 1
              Center(
                child: Text('No current Feedback',style: TextStyle(color: Colors.grey),),
              ),
              // Content for Tab 2
              Center(
                child: Text('No past Feedback',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
