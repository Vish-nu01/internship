import 'package:flutter/material.dart';
import 'dart:core';

class AppointmentSelection extends StatefulWidget {
  const AppointmentSelection({super.key});

  @override
  State<AppointmentSelection> createState() => _AppointmentSelectionState();
}

class _AppointmentSelectionState extends State<AppointmentSelection> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  List<String> appointTime = [
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "2:00 PM",
    "3:00 PM",
    "4:00 PM",
    "5:00 PM",
    "6:00 PM"
  ];

  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    //log('setstate');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Appointment Selection'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQibEmsIKSC-Ne2dy4c8_4El48FipTC8z9xHq8-Oz6wycmrERHEVpOC4eTzpMMp-xTxbYk&usqp=CAU'),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                maxLines: 2,
                                'Doc Name',
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                maxLines: 2,
                                'Hospital Name',
                                style: TextStyle(
                                    fontSize: 20, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    Text(
                      'About:',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text(
                        overflow: TextOverflow.clip,
                        //maxLines: 5,
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                        'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                        'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                        'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui '
                        'officia deserunt mollit anim id est laborum.',
                        style: TextStyle(
                          fontSize: 16.0,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Select Date:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          initialValue:
                              '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                          readOnly: true,
                          onTap: () => _selectDate(context),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffixIcon: const Icon(
                                Icons.calendar_month_outlined,
                                size: 30,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              const Text(
                'Select Time:',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  itemCount: appointTime.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => setState(() {
                      _selectedTime = appointTime[index];
                    }),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: _selectedTime == appointTime[index]
                              ? Border.all(color: Colors.white)
                              : Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                          color: _selectedTime == appointTime[index]
                              ? Colors.deepPurpleAccent.shade100
                              : Colors.white),
                      child: Text(
                        appointTime[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent.shade100,
              minimumSize: const Size(double.infinity, 70)),
          onPressed: () {
            if (_selectedTime != null) {
              // Proceed with appointment confirmation or other action
              //print('Selected Time: $_selectedTime');
              //print('Selected Date: $_selectedDate');
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'Please select a time to book appointment',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )));
            }
          },
          child: const Text('Confirm Appointment',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
