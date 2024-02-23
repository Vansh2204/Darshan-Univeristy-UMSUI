import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void timetable_dialog(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Time Table'),
          content: Image.asset('assets/timetable.png'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: Text('OK')),
          ],
        );
      });
}