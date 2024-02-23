import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class attendence extends StatelessWidget {
  const attendence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            child: Expanded(
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sem - 4',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'A.Y-',
                            style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                          ),
                          Text(
                            '2023-24',
                            style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: LinearProgressIndicator(
                        value: 0.97,
                        color: Colors.green.shade800,
                      ),
                      // onTap: (){
                      //   // Fluttertoast.showToast(
                      //   //     msg: "4th Sem Attendence - 98.47%",
                      //   //     toastLength: Toast.LENGTH_SHORT,
                      //   //     gravity: ToastGravity.CENTER,
                      //   //     timeInSecForIosWeb: 1,
                      //   //     backgroundColor: Colors.black,
                      //   //     textColor: Colors.white,
                      //   //     fontSize: 10,
                      //   //     webBgColor: "black",
                      //   //     webPosition: "center"                      // },
                      //   );
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            child: Expanded(
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Sem - 3',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'A.Y-',
                              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                            ),
                            Text(
                              '2023-24',
                              style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: LinearProgressIndicator(
                          value: 0.97,
                          color: Colors.green.shade800,
                        ),
                        // onTap: (){
                        //   // Fluttertoast.showToast(
                        //   //     msg: "3rd Sem Attendence - 98.23%",
                        //   //     toastLength: Toast.LENGTH_SHORT,
                        //   //     gravity: ToastGravity.CENTER,
                        //   //     timeInSecForIosWeb: 1,
                        //   //     backgroundColor: Colors.black,
                        //   //     textColor: Colors.white,
                        //   //     fontSize: 10,
                        //   //     webBgColor: "black",
                        //   //     webPosition: "center"
                        //   );
                        // }
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}