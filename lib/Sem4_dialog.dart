import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void Sem4_dialog(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(''),
          content: Image.asset('assets/sem4_fees.jpeg'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: Text('OK')),
          ],
        );
      });
}