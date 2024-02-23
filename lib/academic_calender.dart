import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calenderlist extends StatefulWidget {
  const calenderlist({super.key});

  @override
  State<calenderlist> createState() => _calenderlistState();
}

class _calenderlistState extends State<calenderlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A.Y.2023-24 (Sem-4)'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              custom_listtile(
                title: 'Commencement of Semester (Teaching)',
                subtitle: '04-12-2023',
              ),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                title: 'Attendence Review - 1',
                subtitle: '13-01-2023',
              ),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                title: 'Internal Assesment - 1',
                subtitle: '15-01-2023 to 20-01-2024',
              ),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Event: Sprint 2024',
                  subtitle: '08-02-2024 to 10-02-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Attendence Review - 2', subtitle: '02-03-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Internal Assesment - 2',
                  subtitle: '04-03-2024 to 09-03-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Last Day of Teaching', subtitle: '30-03-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Submission of Term Work & SEE Practical Exam/V',
                  subtitle: '30-03-2023 to 06-04-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(title: 'Term End', subtitle: '06-04-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Theory End Semester Examination',
                  subtitle: '08-04-2024'),
              SizedBox(
                height: 10,
              ),
              custom_listtile(
                  title: 'Commencement of next semester',
                  subtitle: '10-06-2024'),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
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
      title: subtitle != null ? Text(subtitle,style: TextStyle(color: Colors.black),) : null,
      subtitle: Text(title),
      leading: Icon(Icons.calendar_month_rounded),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.cyan.shade800),
          borderRadius: BorderRadius.horizontal(right: Radius.zero)),
    );
  }
}
