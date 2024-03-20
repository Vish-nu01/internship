import 'package:flutter/material.dart';

import 'appointment_selection.dart';

class DoctorBookingScreen extends StatelessWidget {
  const DoctorBookingScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Book Doctor'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(height: MediaQuery.of(context).size.height*0.25,
            child: Card(elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. John Doe',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Specialization: Cardiologist',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 16),
                            // Date Picker
                            // SizedBox(height: 8),
                            SizedBox(height: 16),
                            // Book Appointment Button
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurpleAccent.shade100),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentSelection(),));
                                },
                                child: Text(
                                  'Book Appointment',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          radius: 60,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
