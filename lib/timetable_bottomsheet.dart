import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void timetable_bottomsheet(BuildContext context){
  final List<String> _listItems = [
    'Monday',
    'Tueday',
    'Wednesday',
    'Thrusday',
    'Friday'
  ];

  showModalBottomSheet(
      backgroundColor: Colors.black54,
      context: context,
      builder: (context) {
        return Container(
          height: 500,
          child: StatefulBuilder(
              builder: (context, setState) {
                return Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.stretch,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                child: ListView.builder(itemBuilder: (context,index){
                                  if (index == 0){
                                    return Card(
                                      elevation: 10,
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
                                                custom_listtile(title: 'Probability and Statistics', subtitle: '7:45 AM to 8:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'WT - ||', subtitle: '8:40 AM to 9:35 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'DAA (Lab)', subtitle: '9:50 AM to 11:30 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'MADF (Lab)', subtitle: '12:10 PM to 1:30 PM'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  if (index == 1){
                                    return Card(
                                      elevation: 10,
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
                                                custom_listtile(title: 'Probability and Statistics', subtitle: '7:45 AM to 8:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'WT - ||', subtitle: '8:40 AM to 9:35 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'PP (Lab)', subtitle: '9:50 AM to 11:30 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'WT - || (Lab)', subtitle: '12:10 PM to 1:30 PM'),




                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  if (index == 2){
                                    return Card(
                                      elevation: 10,
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
                                                custom_listtile(title: 'WT - ||', subtitle: '7:45 AM to 8:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'DAA', subtitle: '8:40 AM to 9:35 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'Probability and Statistics (Tut)', subtitle: '9:50 AM to 11:30 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'WT - || (Lab)', subtitle: '12:10 PM to 1:30 PM'),



                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  if (index == 3){
                                    return Card(
                                      elevation: 10,
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
                                                custom_listtile(title: 'WT - ||', subtitle: '7:45 AM to 8:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'DAA', subtitle: '8:40 AM to 9:35 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'Probability and Statistics', subtitle: '9:50 AM to 10:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'PP', subtitle: '10:40 PM to 11:30 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'PP', subtitle: '12:10 PM to 1:00 PM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'MADF', subtitle: '1:00 PM to 1:50 PM'),





                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  if (index == 4) {
                                    return Card(
                                      elevation: 10,
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
                                                custom_listtile(title: 'MADF', subtitle: '7:45 AM to 8:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'DAA', subtitle: '8:40 AM to 9:35 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'MADF', subtitle: '9:50 AM to 10:40 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'PP', subtitle: '120:40 AM to 11:30 AM'),
                                                Divider(color: Colors.black,),
                                                custom_listtile(title: 'MADF (Lab)', subtitle: '12:10 PM to 1:50 PM'),




                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }))

                          ],
                        ),
                      ),
                    ),

                  ],
                );
              }),
        );
      });
}


class custom_listtile extends StatelessWidget {

  final String title;
  final String subtitle;
  const custom_listtile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: subtitle != null ? Text(subtitle,style: TextStyle(color: Colors.black,wordSpacing: 2),) : null,
      subtitle: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.cyan.shade800),borderRadius: BorderRadius.horizontal(right: Radius.zero)),
    );

  }
}
