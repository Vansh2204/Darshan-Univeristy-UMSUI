import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class schedule extends StatefulWidget {
  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  String _selectedItem = 'Option 1'; // Default value

  final List<String> items = [
    'Schedule'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3, // specify the number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Schedule'),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.indigo.shade800,
              tabs: [
                Tab(text: 'IA Schedule'),
                Tab(text: 'Exam Schedule'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 550.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(

                      isExpanded: true,
                      hint: Text(
                        'Select IA Schedule',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: double.infinity,

                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 550.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Select Exam Schedule',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: double.infinity,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}